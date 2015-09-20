#First Week


Here comes exercises from week 1




if(!file.exists("03_GettingData/data")){
  dir.create("03_GettingData/data")
}



## Download a file from the web
fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl,destfile="./03_GettingData/data/cameras.csv",method="curl")
list.files("./03_GettingData/data")
dateDownloaded <- date()
dateDownloaded