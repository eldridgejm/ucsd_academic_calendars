# UCSD Academic Calendars

This repository contains UCSD academic calendars in a variety of formats:
- quarterly planners as PDFs (in the [`pdf` directory](https://github.com/eldridgejm/ucsd_academic_calendars/tree/main/pdf))
- `.ics` (iCalendar) files, for importing into Google Calendar, Apple Calendar, etc. (in the [`ics` directory](https://github.com/eldridgejm/ucsd_academic_calendars/tree/main/ics)).
- `.json` files, for people who want to work with the dates programmatically (in the [`json` directory](https://github.com/eldridgejm/ucsd_academic_calendars/tree/main/json))

For convenience, the files for the current academic year are linked below:

**Current Academic Year (2025-2026)**

- Fall 2025 ([pdf](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/pdf/2025-2026/Fall-2025.pdf) | [ics](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/ics/2025-2026/Fall-2025.ics))
- Winter 2026 ([pdf](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/pdf/2025-2026/Winter-2026.pdf) | [ics](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/ics/2025-2026/Winter-2026.ics))
- Spring 2026 ([pdf](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/pdf/2025-2026/Spring-2026.pdf) | [ics](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/ics/2025-2026/Spring-2026.ics))
- Full Academic Year ([ics](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/ics/2025-2026/Academic-Year-2025-2026.ics))

**Next Academic Year (2026-2027)**

- Fall 2026 ([pdf](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/pdf/2026-2027/Fall-2026.pdf) | [ics](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/ics/2026-2027/Fall-2026.ics))
- Winter 2027 ([pdf](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/pdf/2026-2027/Winter-2027.pdf) | [ics](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/ics/2026-2027/Winter-2027.ics))
- Spring 2027 ([pdf](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/pdf/2026-2027/Spring-2027.pdf) | [ics](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/ics/2026-2027/Spring-2027.ics))
- Full Academic Year ([ics](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/ics/2026-2027/Academic-Year-2026-2027.ics))

## Updating the Calendars

Every few years, the next several years worth of academic calendars should be scraped.
This can be done using the `scrape-dates` script in the `scripts` directory. For example,
in 2026 we might run:

```
scrape-dates 2026
scrape-dates 2027
scrape-dates 2027
scrape-dates 2028
```

Following this, run `make-pdf` and `make-ics` to rebuild the PDF and ICS files from the
newly scraped JSON files.

Each year, the links in this README should be updated to point to the current and next academic years.
This can be done using the `update-readme-links` script in the `scripts` directory. This script
takes one argument: a reference year. When run in the Fall of a given year, the reference year
should be the current calendar year. For example, in Fall 2026 we would run:

```
update-readme-links 2026
```

## Technical Details

These are made by scraping the [official academic
calendars](https://blink.ucsd.edu/instructors/resources/academic/calendars), so
the dates _should_ be accurate.

An academic year's dates can be scraped by invoking the `scrape-dates` script
with the first calendar year in the academic year of interest. For example, the
following will scrape dates for academic year 2022-23:

```
scrape-dates 2022
```

The results are placed in the `json` directory.

The quarterly PDF planners and iCalendar files are built from the JSON output
using the `make-pdf` and `make-ics` commands, respectively.

UCSD's academic calendar webpage has minor differences in formatting from
year-to-year, so it's not unlikely that the scraping script will fail for some
future year. If so, it might be easiest to make *ad hoc* changes to the JSON
files directly; the PDFs and ICS files can then be built as usual. Writing a scraper to
get the dates was overkill anyways (400 lines of Python to get ~20 dates per
academic year...)
