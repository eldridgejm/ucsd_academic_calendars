# UCSD Quarter Calendars

This repository contains weekly planners for UC San Diego academic quarters as
PDFs. The planners are located in the [`./planners`](https://github.com/eldridgejm/ucsd_quarter_planners/tree/main/planners) directory.

These are made by scraping the [official academic calendars](https://blink.ucsd.edu/instructors/resources/academic/calendars), so the dates _should_ be accurate.

## Technical Details

An academic year's dates can be scraped by invoking the `scrape-dates` script
with the first year in the AY of interest. For example:

```
> scrape-dates 2022
```

The scraped dates for several academic years are in the `dates/` directory.
