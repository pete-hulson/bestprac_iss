# to test plus age

# load packages ----
# devtools::unload('surveyISS')
# devtools::install_github("BenWilliams-NOAA/surveyISS", force = TRUE)
# devtools::install_github("afsc-assessments/afscdata", force = TRUE)
library(surveyISS)

# set iterations ----
# set number of desired bootstrap iterations (suggested here: 10 for testing, 500 for running)
# iters = 500
iters = 10

# get data ----
# if query = TRUE then will run data queries, if FALSE will read previously run data
# set = TRUE if first time running, or if data has changed
query = TRUE

region = 'goa'
yrs = 1990
species = c(10110, 10130, 10180, 20510, 21720, 21740, 30060, 30420, 30050, 30051, 30052, 30150, 30152, 10261, 10262, 10200)
survey = 47

if(isTRUE(query)){
  data <- surveyISS::query_data(survey = survey,
                                region = region,
                                species = species,
                                yrs = yrs)
  
  saveRDS(data, file = here::here('data', region, 'data.RDS'))
} else{
  data <- readRDS(file = here::here('data', region, 'data.RDS'))
}

# for testing run time
if(iters < 100){
  st <- Sys.time()
}

# 5+ ----
## age & length ----
surveyISS::srvy_iss(iters = iters, 
                    lfreq_data = data$lfreq,
                    specimen_data = data$specimen, 
                    cpue_data = data$cpue, 
                    strata_data = data$strata,  
                    yrs = 1990,
                    boot_hauls = TRUE, 
                    boot_lengths = TRUE, 
                    boot_ages = TRUE, 
                    al_var = TRUE, 
                    al_var_ann = TRUE, 
                    age_err = TRUE,
                    plus_age = 5,
                    region = 'goa',  
                    save = '5plus')

## caal ----
surveyISS::srvy_iss_caal(iters = iters, 
                         specimen_data = data$specimen, 
                         cpue_data = data$cpue, 
                         yrs = 1990,
                         boot_hauls = TRUE, 
                         boot_ages = TRUE,
                         al_var = TRUE, 
                         al_var_ann = TRUE, 
                         age_err = TRUE,
                         plus_age = 5,
                         region = 'goa',  
                         save = '5plus')

# 10+ ----
## age & length ----
surveyISS::srvy_iss(iters = iters, 
                    lfreq_data = data$lfreq,
                    specimen_data = data$specimen, 
                    cpue_data = data$cpue, 
                    strata_data = data$strata,  
                    yrs = 1990,
                    boot_hauls = TRUE, 
                    boot_lengths = TRUE, 
                    boot_ages = TRUE, 
                    al_var = TRUE, 
                    al_var_ann = TRUE, 
                    age_err = TRUE,
                    plus_age = 10,
                    region = 'goa',  
                    save = '10plus')

## caal ----
surveyISS::srvy_iss_caal(iters = iters, 
                         specimen_data = data$specimen, 
                         cpue_data = data$cpue, 
                         yrs = 1990,
                         boot_hauls = TRUE, 
                         boot_ages = TRUE,
                         al_var = TRUE, 
                         al_var_ann = TRUE, 
                         age_err = TRUE,
                         plus_age = 10,
                         region = 'goa',  
                         save = '10plus')

# 15+ ----
## age & length ----
surveyISS::srvy_iss(iters = iters, 
                    lfreq_data = data$lfreq,
                    specimen_data = data$specimen, 
                    cpue_data = data$cpue, 
                    strata_data = data$strata,  
                    yrs = 1990,
                    boot_hauls = TRUE, 
                    boot_lengths = TRUE, 
                    boot_ages = TRUE, 
                    al_var = TRUE, 
                    al_var_ann = TRUE, 
                    age_err = TRUE,
                    plus_age = 15,
                    region = 'goa',  
                    save = '15plus')

## caal ----
surveyISS::srvy_iss_caal(iters = iters, 
                         specimen_data = data$specimen, 
                         cpue_data = data$cpue, 
                         yrs = 1990,
                         boot_hauls = TRUE, 
                         boot_ages = TRUE,
                         al_var = TRUE, 
                         al_var_ann = TRUE, 
                         age_err = TRUE,
                         plus_age = 15,
                         region = 'goa',  
                         save = '15plus')

# 20+ ----
## age & length ----
surveyISS::srvy_iss(iters = iters, 
                    lfreq_data = data$lfreq,
                    specimen_data = data$specimen, 
                    cpue_data = data$cpue, 
                    strata_data = data$strata,  
                    yrs = 1990,
                    boot_hauls = TRUE, 
                    boot_lengths = TRUE, 
                    boot_ages = TRUE, 
                    al_var = TRUE, 
                    al_var_ann = TRUE, 
                    age_err = TRUE,
                    plus_age = 20,
                    region = 'goa',  
                    save = '20plus')

## caal ----
surveyISS::srvy_iss_caal(iters = iters, 
                         specimen_data = data$specimen, 
                         cpue_data = data$cpue, 
                         yrs = 1990,
                         boot_hauls = TRUE, 
                         boot_ages = TRUE,
                         al_var = TRUE, 
                         al_var_ann = TRUE, 
                         age_err = TRUE,
                         plus_age = 20,
                         region = 'goa',  
                         save = '20plus')

# 25+ ----
## age & length ----
surveyISS::srvy_iss(iters = iters, 
                    lfreq_data = data$lfreq,
                    specimen_data = data$specimen, 
                    cpue_data = data$cpue, 
                    strata_data = data$strata,  
                    yrs = 1990,
                    boot_hauls = TRUE, 
                    boot_lengths = TRUE, 
                    boot_ages = TRUE, 
                    al_var = TRUE, 
                    al_var_ann = TRUE, 
                    age_err = TRUE,
                    plus_age = 25,
                    region = 'goa',  
                    save = '25plus')

## caal ----
surveyISS::srvy_iss_caal(iters = iters, 
                         specimen_data = data$specimen, 
                         cpue_data = data$cpue, 
                         yrs = 1990,
                         boot_hauls = TRUE, 
                         boot_ages = TRUE,
                         al_var = TRUE, 
                         al_var_ann = TRUE, 
                         age_err = TRUE,
                         plus_age = 25,
                         region = 'goa',  
                         save = '25plus')

# 30+ ----
## age & length ----
surveyISS::srvy_iss(iters = iters, 
                    lfreq_data = data$lfreq,
                    specimen_data = data$specimen, 
                    cpue_data = data$cpue, 
                    strata_data = data$strata,  
                    yrs = 1990,
                    boot_hauls = TRUE, 
                    boot_lengths = TRUE, 
                    boot_ages = TRUE, 
                    al_var = TRUE, 
                    al_var_ann = TRUE, 
                    age_err = TRUE,
                    plus_age = 30,
                    region = 'goa',  
                    save = '30plus')

## caal ----
surveyISS::srvy_iss_caal(iters = iters, 
                         specimen_data = data$specimen, 
                         cpue_data = data$cpue, 
                         yrs = 1990,
                         boot_hauls = TRUE, 
                         boot_ages = TRUE,
                         al_var = TRUE, 
                         al_var_ann = TRUE, 
                         age_err = TRUE,
                         plus_age = 5,
                         region = 'goa',  
                         save = '30plus')



# For testing run time of 500 iterations ----
if(iters < 500){
  end <- Sys.time()
  runtime <- (end - st) / iters * 500 / 60
  runtime
}