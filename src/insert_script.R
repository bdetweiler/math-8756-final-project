########################################################################################
# File: insert_script.R
# Author: Brian Detweiler
# Notes: This script will take a CSV in the following format
#        PRODUCER,DISTILLER,NAME,AGE,PRICE
#        and insert it into the SQLite database, being mindful of duplicates.
#
#        You must set environment variable MATH_8756_HOME to the project directory.
########################################################################################
library('DBI') 
library('RSQLite')

MATH_8756_HOME <- Sys.getenv('MATH_8756_HOME')
SCOTCH_PRICES_DB <- 'scotch_prices.db'
DB <- paste(MATH_8756_HOME, paste('db', SCOTCH_PRICES_DB, sep=dir_separator), sep=dir_separator)
RETAILERS_CSV <- paste(MATH_8756_HOME, paste('clean data', 'retailers.csv', sep=dir_separator), sep=dir_separator)
system <- Sys.info()['sysname']

dir_separator <- '/'
if (system == 'Windows') {
  dir_separator <- '\\'
}

con <- dbConnect(RSQLite::SQLite(), DB)

bulk_insert <- function(sql, data_to_insert) {
  dbBeginTransaction(con)
  dbGetPreparedQuery(con, sql, bind.data=data_to_insert)
  dbCommit(con)
  dbGetQuery(con, "select count(*) from keys")[[1]]
}

csv <- read.csv(RETAILERS_CSV)

sql <- "insert into retailer(RETAILER_ID, NAME, TYPE, URL, CITY, STATE, COUNTRY, SHIPPING_COST, ADDITIONAL_COST)
        values(:NAME, :TYPE, :URL, :CITY, :STATE, :COUNTRY, :SHIPPING_COST, :ADDITIONAL_COST)"
bulk_insert(sql, csv)



#for (i in 1:length(csv)[1]) {
#  name <- csv[i]$NAME
#  url <- csv[i]$URL
#  city <- csv[i]$CITY
#  state <- csv[i]$STATE
#  country <- csv[i]$COUNTRY
#  shipping_cost <- csv[i]$SHIPPING_COST
#  additional_cost <- csv[i]$ADDITIONAL_COST
  
#  sql <- "select name from retailer where name = ':name'"
#}


clean_data_dir <- paste(MATH_8756_HOME, 'clean data', sep=dir_separator)
csvs <- list.files(path=clean_data_dir)




print(length(csvs))
for (i in 1:length(csvs)) {
   
  # TODO: Finish filling this out and remove this line
  if (csvs[i] == 'love_scotch.csv' | csvs[i] == 'retailers.csv') {
    next
  }
  
  retailer = ''
  if (csvs[i] == 'ace_spirits.csv') {
    retailer = 'Ace Spirits'
  } else if (csvs[i] == 'astor_wines.csv') {
    retailer = 'Astor Wines'
  } else if (csvs[i] == 'beltramos.csv') {
    retailer = 'Beltramos'
  } else if (csvs[i] == 'binnys.csv') {
    retailer = 'Binny\'s'
  } else if (csvs[i] == 'liquorama.csv') {
    retailer = 'Liquorama'
  } else if (csvs[i] == 'pacific_online_spirits.csv') {
    retailer = 'Pacific Online Spirits' 
  } else if (csvs[i] == 'quality_liquor_store.csv') {
    retailer = 'Quality Liquor Store'
  } else if (csvs[i] == 'sfwtc.csv') {
    retailer = 'SFWTC'
  } else if (csvs[i] == 'astor_wines.csv') {
    retailer = 'Astor Wines'
  } else if (csvs[i] == 'whisky_shop_usa.csv') {
    retailer = 'Whiskey Shop USA'
  }
  
  print(paste('retailer = ', retailer))
  # select *
  # from price,
  # scotch,
  # producer,
  # distillery,
  # retailer
  # where price.scotch_id = scotch.scotch_id
  # and scotch.producer = producer.producer_id
  # and scotch.distillery = distillery.distillery_id
  # and price.retailer_id = retailer.retailer_id
  
  # sql <- "INSERT INTO School VALUES (1, 'urban', 'state', 'medium')"
  sql <- "select * from scotch where name = 'Three Wood'"
  
  rs <- dbGetQuery(conn=con, sql)
  
    # Get all results
  
  # Loop over all rows
  for (j in 1:dim(rs)[1]) {
    print(j)
  }
  
  print(csvs[i])
  
  csv <- read.csv(paste(clean_data_dir, csvs[i], sep=dir_separator))
   
}
 
dbDisconnect(con)
 