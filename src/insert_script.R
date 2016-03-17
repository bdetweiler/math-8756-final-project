 ########################################################################################
 # File: insert_script.R
 # Author: Brian Detweiler
 # Notes: This script will take a CSV in the following format
 #        PRODUCER,DISTILLER,NAME,AGE,PRICE
 #        and insert it into the SQLite database, being mindful of duplicates.
 #
 #        You must set environment variable MATH_8756_HOME to the project directory.
 ########################################################################################
 
 # Read in CSVs in the following vector
 
 clean_data_dir <- paste(Sys.getenv('MATH_8756_HOME'), 'clean data', sep='\\')
 csvs <- list.files(path=clean_data_dir)
 
 # Then we'll basically do this...
 # paste(clean_data_dir, csvs[1], sep='\\')