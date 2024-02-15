# Study 3: Personality Tests & ADHD

## Elisabeth R. Silver, Mikki Hebl, & Frederick L. Oswald

This code repository contains the code necessary to replicate the analyses reported by Silver et al. in their study on the implications of using personality testing in selection contexts for job applicants with ADHD. 

Some code and data files are not included in the public-facing repository. Specifically, the file `calculate_adhd_scores.R` uses Ustun and colleagues' (2017) propriety scoring algorithm for their ASRS-5 assessment of ADHD symptoms. Because it is proprietary, we do not reproduce it. 

In addition, the data files for the sample can be provided via email request to the corresponding author (Elisabeth Silver, elisabeth.silver[@]rice.edu). The data files are not included here to protect participants' privacy. 

This study was [preregistered](https://osf.io/t8wb6/?view_only=3a6a25131e9d446c97a7d0c2e7f3edaa).

## Code files

1. `Power Analysis Study 3.Rmd` conducts a power analysis to determine the number of participants required for adequate statistical power. 

2. `Study 3 Cleaning and Analysis.Rmd` cleans the survey data and conducts all hypothesis tests and exploratory analyses. The code produces all of the outputs reported in the paper and supplementary materials, which are stored in the `outputs/` subfolder. This script calls `calculate_adhd_scores.R`. To override issues with references to this file, see point 4 in this section. 

3. `calculate_adhd_scores.R` calculates participants' scores on the ADHD symptom severity screener using the propriety scoring algorithm developed by [Ustun and colleagues (2017)](https://doi.org/10.1001/jamapsychiatry.2017.0298). Note that this file is not included in the repository to protect the proprietary scoring algorithm.

4. `calculate_adhd_scores_public.R` sums participants' scores on the ADHD symptom severity screener without using the proprietary algorithm. To prevent file reference issues, replace `source("calculate_adhd_scores.R")` with `source("calculate_adhd_scores_public.R")`. The results will be similar.

5. `Screen Positive Study 3 Cleaning and Analysis.Rmd` is a markdown file identical to the main cleaning and analysis file, but using a different method to allocate participants into ADHD and non-ADHD groups (exploratory analysis).

## Input files

1. `data/data_adhd.csv` contains the original survey data collected from Qualtrics from the ADHD subsample. This is available to researchers upon request.

2. `data/data_nadhd.csv` contains the original survey data collected from Qualtrics from the non-ADHD subsample. This is available to researchers upon request. Note that the ADHD and non-ADHD participants are in separate files because the Prolific ads for people with vs. without ADHD directed participants to separate copies of the same exact survey. Separate copies of the survey were made to ensure even randomization of ADHD and non-ADHD participants into the work-specific and general conscientiousness conditions. 

3. `data/variable_recode.csv` contains the mapping of original item names to clean item names. 

4. `data/facet_names.csv` contains information regarding the facet items and labels.

5. `data/study2_clean_survey_data.csv` contains the cleaned data from Study 2 to compare average scores in lower stakes (Study 2) with those in higher stakes (Study 3). Also used to create supersample for CFA analysis. Available from the authors upon request. 

## Packages

This project uses a number of packages. Please see the code files for a complete list. One package, `statstring`, was developed by the corresponding author. To download this package, use `devtools::install_github(silverer/statstring)`. 

