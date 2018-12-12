#####
## G.J. Petrucci Jr.
# NFL Punt 
# Created: 12/12/2018
# Edited: 12/12/2018
#####

# Kaggle link: https://www.kaggle.com/c/NFL-Punt-Analytics-Competition#description

# Clear the environment----
rm(list=ls())
# Check if running Windows or Mac----
system = Sys.info()[1]
if(system == 'Windows'){
  moca_drive = 'X:'
  box_drive = 'C:/Users/Greg J Petrucci Jr/Box'
} else {
  moca_drive = '/Volumes/MOCA'
  box_drive = '/Users/gpetrucci/Box'
}
# Load the necessary libraries----
library(readstata13)
library(ppcor)
library(psych)
library(lm.beta)
library(psych)
library(tidyverse)
library(kableExtra)
library(knitr)
library(broom)
library(cowplot)
library(car)
library(olsrr)
library(foreign)
library(lmtest)
library(sandwich)
library(epitools)
library(MASS)
library(nnet)
library(margins)
library(secr)
library(multcomp)
# Set working directory and read in data----
  setwd(paste(box_drive, '/Petrucci_Personal/Univeristy of Massachusetts/University of Massachusetts/fall.2018/Personal/NFL Punt/Data/all', sep='/'))
    wd <- getwd()
      data_files <- dir() 
        # data
          game_data <- read.csv(paste(wd,as.character(data_files[2]), sep='/'))
          play_information_data <- read.csv(paste(wd,as.character(data_files[13]), sep='/'))
          play_player_role_data <- read.csv(paste(wd,as.character(data_files[14]), sep='/'))
          player_punt_data <- read.csv(paste(wd,as.character(data_files[15]), sep='/'))
# Exploratory data analysis
  field_surface_summ_tab <- table(game_data$Turf)        
  
  
