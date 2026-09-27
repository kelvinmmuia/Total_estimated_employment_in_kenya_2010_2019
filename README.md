# Estimated employment in Kenya, 2010–2019

An R Markdown analysis of Kenya's estimated employment by category and year. It reshapes the source table for comparison across years, calculates each category's share of the annual total, and presents the results in several charts.

## What is in this repository

- `total_estimated_employment.Rmd`: data import, reshaping, category summaries, and charts.
- `total-estimated-employment.csv`: a local copy of the input data.
- `total_estimated_employment.html` and `total_estimated_employment.pdf`: rendered reports.
- `plots/`: exported figures.

The analysis uses R, tidyverse, ggplot2, ggpubr, and forcats. Charts include a year-by-year trend view, category shares, category totals, and small multiples by year. The figures describe the source data; they do not establish causes of employment changes.

## Data source

[Kenya Economic Survey 2020 employment dataset on OpenAfrica](https://open.africa/dataset/kenya-economic-survey-report-2020/resource/ca3a9073-e1f5-4c22-86bc-ae76cd1087f3).

The series ends in 2019 and should not be read as a current labour-market estimate.

## Reproduce

Open `total_estimated_employment.Rmd` in RStudio or another R Markdown environment, install the packages named in its setup chunk, and knit the document. The source notebook reads the OpenAfrica CSV URL and writes figure files to `plots/`. If the remote CSV is unavailable, use the included local CSV and update the import line in the notebook.
