

getwd()

## Checking for and creating directories


dir.create("1_DATASCITOOLBOX")
dir.create("2_RPROG")
dir.create("3_GETDATA")
dir.create("4_EXDATA")
dir.create("5_REPDATA")
dir.create("6_STATINFERENCE")
dir.create("7_REGMODS")
dir.create("8_PREDMACHLEARN")
dir.create("9_DEVDATAPROD")

	
	
	

	
	


if(!file.exists("03_GettingData")){
  dir.create("03_GettingData")
}

if(!file.exists("03_GettingData/data")){
  dir.create("03_GettingData/data")
}



## Download a file from the web
fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl,destfile="./03_GettingData/data/cameras.csv",method="curl")
list.files("./03_GettingData/data")
dateDownloaded <- date()
dateDownloaded



