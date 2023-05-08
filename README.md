# UCSD Academic Calendars

This repository contains UCSD academic calendars in a variety of formats:
- quarterly planners as PDFs (in the [`pdf` directory](https://github.com/eldridgejm/ucsd_academic_calendars/tree/main/pdf))
- `.ics` (iCalendar) files, for importing into Google Calendar, Apple Calendar, etc. (in the [`ics` directory](https://github.com/eldridgejm/ucsd_academic_calendars/tree/main/ics)).
- `.json` files, for people who want to work with the dates programmatically (in the [`json` directory](https://github.com/eldridgejm/ucsd_academic_calendars/tree/main/json))

**Current Academic Year (2022-23)**

- Fall 2022 ([pdf](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/pdf/2022-2023/Fall-2022.pdf) | [ics](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/ics/2022-2023/Fall-2022.ics))
- Winter 2023 ([pdf](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/pdf/2022-2023/Winter-2023.pdf) | [ics](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/ics/2022-2023/Winter-2023.ics))
- Spring 2023 ([pdf](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/pdf/2022-2023/Spring-2023.pdf) | [ics](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/ics/2022-2023/Spring-2023.ics))
- Academic Year Calendar ([ics](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/ics/2022-2023/Academic-Year-2022-2023.ics))

**Next Academic Year (2023-24)**

- Fall 2023 ([pdf](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/pdf/2023-2024/Fall-2023.pdf) | [ics](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/ics/2023-2024/Fall-2023.ics))
- Winter 2024 ([pdf](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/pdf/2023-2024/Winter-2024.pdf) | [ics](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/ics/2023-2024/Winter-2024.ics))
- Spring 2024 ([pdf](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/pdf/2023-2024/Spring-2024.pdf) | [ics](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/ics/2023-2024/Spring-2024.ics))
- Academic Year Calendar ([ics](https://github.com/eldridgejm/ucsd_academic_calendars/raw/main/ics/2023-2024/Academic-Year-2023-2024.ics))

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
files directly; the PDFs and ICS files can then be built as usual.
