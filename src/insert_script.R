########################################################################################
# File: insert_script.R
# Author: Brian Detweiler
# Notes: This script will take a CSV in the following format
#        PRODUCER,DISTILLER,NAME,AGE,PRICE
#        and insert it into the SQLite database, being mindful of duplicates.
#
#        You must set environment variable MATH_8756_HOME to the project directory.
#
# DBI - Basic functions to connect to all types of external databases
# RSQLite - Functions to embed SQLite into R
# RSQLite.extfuns - Include some SQLite extensions
# sqldf - Like using SQL queries? Use SQL syntax with R dataframes.
# http://rstudio-pubs-static.s3.amazonaws.com/8753_a57d3950027541a590c9b40a045accbf.html#9
########################################################################################
library('DBI') 
library('RSQLite')

# Constants
MATH_8756_HOME <- Sys.getenv('MATH_8756_HOME')
SCOTCH_PRICES_DB <- 'scotch_prices.db'
DB <- paste(MATH_8756_HOME, paste('db', SCOTCH_PRICES_DB, sep=dir_separator), sep=dir_separator)
RETAILERS_CSV <- paste(MATH_8756_HOME, paste('clean data', 'retailers.csv', sep=dir_separator), sep=dir_separator)
system <- Sys.info()['sysname']

dir_separator <- '/'
if (system == 'Windows') {
  dir_separator <- '\\'
}

print('connecting...')
con <- DBI::dbConnect(RSQLite::SQLite(), DB)
DBI::dbBegin(con)
print('connected!')
print(con)

# XXX: I had trouble with this. It inserted 5 rows then just decided not to insert anymore.
#      So I ended up copy/pasting the SQL queries and inserting them manually. Will have to 
#      find a better way of going about this for the scotch and prices. Possibly Python...
bulk_insert_retailers <- function(data_to_insert) {
  print('inserting...')
  
  for (i in 1:dim(data_to_insert)[1]) {
    # Get max RETAILER_ID
    id <- dbGetQuery(con, 'select max(retailer_id) id from retailer')
    print(paste('max id = ', id, sep=''))
    id <- id + 1
    print(paste('max value is now: ', id, sep=' '))
    
    name <- data_to_insert[i,'NAME']
    
    sql <- paste(paste("select * from retailer where name = '", name, sep=''), "'", sep='')
    retailer_exists <- RSQLite::dbGetQuery(con, sql)
    row_count <- dim(retailer_exists)[1]
    if (row_count > 0) {
      print('retailer exists. Continuing...')
      print(retailer_exists)
      next
    }
    
    print(paste('inserting retailer ', name, sep=''))
    
    # Tried doing this with data binding but it doesn't seem to want to work
    # So we're doing it the ugly way
    
    sql <- "insert into retailer (RETAILER_ID, NAME, URL, TYPE, CITY, STATE, COUNTRY, SHIPPING_COST, ADDITIONAL_COST)"
    sql <- paste(paste(paste(sql, "values(", sep=' '), id, sep=''), ", ", sep='')
    sql <- paste(paste(paste(sql, " '", sep=''), data_to_insert[i, 'NAME'], sep=''), "', ", sep='')
    sql <- paste(paste(paste(sql, " '", sep=''), data_to_insert[i, 'URL'], sep=''), "', ", sep='')
    sql <- paste(paste(paste(sql, " '", sep=''), data_to_insert[i, 'TYPE'], sep=''), "', ", sep='')
    sql <- paste(paste(paste(sql, " '", sep=''), data_to_insert[i, 'CITY'], sep=''), "', ", sep='')
    sql <- paste(paste(paste(sql, " '", sep=''), data_to_insert[i, 'STATE'], sep=''), "', ", sep='')
    sql <- paste(paste(paste(sql, " '", sep=''), data_to_insert[i, 'COUNTRY'], sep=''), "', ", sep='')
    if (!is.na(data_to_insert[i, 'SHIPPING_COST'])) {
      sql <- paste(paste(sql, " ", sep=''), data_to_insert[i, 'SHIPPING_COST'], sep='')
    } else {
      sql <- paste(paste(sql, " ", sep=''), 'null', sep='')
    }
    sql <- paste(sql, ",", sep=' ')
    
    if (!is.na(data_to_insert[i, 'ADDITIONAL_COST'])) {
      sql <- paste(paste(sql, " ", sep=''), data_to_insert[i, 'ADDITIONAL_COST'], sep='')
    } else {
      sql <- paste(paste(sql, " ", sep=''), 'null', sep='')
    }
    
    
    sql <- paste(sql, ')', sep='')
    print(sql)
    
    RSQLite::dbSendQuery(con, sql)
    #DBI::dbCommit(con)


  }
  #dbCommit(con)
  #q <- dbGetQuery(con, "select count(*) from retailer")[[1]]
  print('done!')
  print(q)
}

#csv <- read.csv(RETAILERS_CSV)

#sql <- "insert into retailer(NAME, TYPE, URL, CITY, STATE, COUNTRY, SHIPPING_COST, ADDITIONAL_COST)
#        values($NAME, $TYPE, $URL, $CITY, $STATE, $COUNTRY, $SHIPPING_COST, $ADDITIONAL_COST)"
#bulk_insert_retailers(sql, csv)



#for (i in 1:length(csv)[1]) {

  
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
  #sql <- "select * from scotch where name = 'Three Wood'"
  
  #rs <- dbGetQuery(conn=con, sql)
  
    # Get all results
  
  # Loop over all rows
  #for (j in 1:dim(rs)[1]) {
  #  print(j)
  #}
  
  #print(csvs[i])
  
  #csv <- read.csv(paste(clean_data_dir, csvs[i], sep=dir_separator))
   
}
 
dbDisconnect(con)
 