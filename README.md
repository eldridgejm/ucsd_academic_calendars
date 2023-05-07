# UCSD Quarter Planners

This repository contains weekly planners for UC San Diego academic quarters as
PDFs. The planners are made by scraping the [official academic calendars](https://blink.ucsd.edu/instructors/resources/academic/calendars).

An academic year's dates can be scraped by invoking the `scrape-dates` script
with the first year in the AY of interest. The output is JSON. For example:

```
> scrape-dates 2022 > 2022-2023.json
```

The scraped dates for several academic years are in the `dates/` directory.
