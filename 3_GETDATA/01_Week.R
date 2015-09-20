#First Week


Here comes exercises from week 1


getwd()
setwd("/Volumes/Fernando/Google Drive/00 Academics/04 Data Science/04 Coursera/DataScience_Rey_Coursera")

if(!file.exists("./data")){
  dir.create("./data")
}



## Download a file from the web
fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl,destfile="./data/cameras.csv",method="curl")
list.files("./03_GettingData/data")
dateDownloaded <- date()
dateDownloaded

getwd()
#Main wd: "/Volumes/Fernando/Google Drive/00 Academics/04 Data Science/04 Coursera/DataScience_Rey_Coursera"
setwd("/Volumes/Fernando/Google Drive/00 Academics/04 Data Science/04 Coursera/DataScience_Rey_Coursera")
getwd()
dir.create("./Downloaded_packages")
setwd("/Volumes/Fernando/Google Drive/00 Academics/04 Data Science/04 Coursera/DataScience_Rey_Coursera/Downloaded_packages")

install.packages("RMySQL") 
install.packages("DBI")
library(DBI)
library(RMySQL)

ucscDb <- dbConnect(MySQL(),user="genome", 
                    host="genome-mysql.cse.ucsc.edu")
result <- dbGetQuery(ucscDb,"show databases;"); dbDisconnect(ucscDb);
result
