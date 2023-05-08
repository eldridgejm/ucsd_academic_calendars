{
  inputs.nixpkgs.url = github:NixOS/nixpkgs/nixos-22.11;

  outputs = { self, nixpkgs, }:
    let
      supportedSystems = [ "x86_64-linux" "x86_64-darwin" "aarch64-darwin" ];
      forAllSystems = f: nixpkgs.lib.genAttrs supportedSystems (system: f system);

    in
      {
        devShell = forAllSystems (system:

          let
            pkgs = nixpkgs.legacyPackages.${system};
          in
            pkgs.mkShell {

              buildInputs =
              [
                # latex environment
                (
                  pkgs.texlive.combine {
                    inherit (pkgs.texlive)
                    scheme-full;
                  }
                )

                # python environment
                (
                  pkgs.python3.withPackages (p: [
                    p.requests
                    p.beautifulsoup4
                    p.ics
                    p.attrs
                  ])
                )

              ];

              # we export the path to the latex style files here this could be
              # done in texlive.combine above, but changes to the style files
              # would cause a long rebuild of the latex package
              shellHook = ''
                # add scripts to path
                export PATH=$(pwd)/scripts:$PATH
              '';
            }
        );
      };
}
