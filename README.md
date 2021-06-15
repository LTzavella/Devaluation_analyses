### R code for analyses in two [preregistered experiments](https://osf.io/6bsnv/) that are currently in preparation for publication: "Explicit and implicit devaluation effects of food-specific response inhibition training"

> The R code should be reproducible in the latest RStudio/R environments but for any issues please do not hesitate to contact me directly. As the code was not developed as an R package we cannot ensure compatibility of all dependencie and R packages. For this reason we have added R session details, which should allow you to identify any problems with specific packages. 

#### R Markdown files and workflow description / instructions: 

* The raw data are available on OSF and stored in an EU server. I have used the [osfr](https://github.com/ropensci/osfr) package to enable the retrieval and processing of data files from both experiments without any manual steps. 
* The code should be downloaded and kept in the same repository/folder. You can start by opening the [Repro_analyses.Rproj](https://github.com/LTzavella/Devaluation_analyses/blob/master/Repro_analyses.Rproj) file. 
<br></br>
* There are two main scripts for convenience. First, the [Data_preprocessing.Rmd](https://github.com/LTzavella/Devaluation_analyses/blob/master/Data_preprocessing.Rmd) file should be used to download, read and preprocess the raw data from both experiments. The code will also create summary csv data files. 
* Second, the [Preregistered_test.Rmd](https://github.com/LTzavella/Devaluation_analyses/blob/master/Preregistered_tests.Rmd) file can be used to run preregistered analyses - primary and supplementary - with the exception of Bayesian tests for Experiment 2 which were conducted in JASP. 
* For the preregistered tests I am using a custom function to calculate Cohen's dav and CIs which has been adapted from [https://github.com/Lakens/anchor_based_methods_SESOI/blob/master/effect_size_d_paired_function.R](https://github.com/Lakens/anchor_based_methods_SESOI/blob/master/effect_size_d_paired_function.R).

#### R Packages 
[plyr](https://github.com/hadley/plyr); 
[here](https://github.com/r-lib/here); 
[jmv](https://github.com/jamovi/jmv); 
[BayesFactor](https://richarddmorey.github.io/BayesFactor/); 
[MBESS](https://www3.nd.edu/~kkelley/site/MBESS.html)

Shield: [![CC BY 4.0][cc-by-shield]][cc-by]

This work is licensed under a
[Creative Commons Attribution 4.0 International License][cc-by].

[![CC BY 4.0][cc-by-image]][cc-by]

[cc-by]: http://creativecommons.org/licenses/by/4.0/
[cc-by-image]: https://i.creativecommons.org/l/by/4.0/88x31.png
[cc-by-shield]: https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg
