
#First Quizz Question

## We use the suggested tutorial by hadley
getwd()
setwd("/Volumes/Fernando/Google Drive/00 Academics/04 Data Science/04 Coursera/DataScience_Rey_Coursera/3_GETDATA")
install.packages("httr")
library(httr)

# 1. Find OAuth settings for github:
#    http://developer.github.com/v3/oauth/
oauth_endpoints("github")

# 2. To make your own application, register at at
#    https://github.com/settings/applications. Use any URL for the homepage URL
#    (http://github.com is fine) and  http://localhost:1410 as the callback url
#
#    Replace your key and secret below.
myapp <- oauth_app("github",
                   key = "1a8cba4476aa54432d82",
                   secret = "8f8bfeacd8a6ce7e4c3cec1486f2298df7145110")

# 3. Get OAuth credentials
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)
Yes
# 4. Use API
gtoken <- config(token = github_token)
req <- GET("https://api.github.com/rate_limit", gtoken)
stop_for_status(req)
content(req)

# OR:
req <- with_config(gtoken, GET("https://api.github.com/rate_limit"))
stop_for_status(req)
content(req)

#####

#Perfect, it works now


#Question 1
##Use API
gtoken <- config(token = github_token)
req <- GET("https://api.github.com/users/jtleek/repos", gtoken)
stop_for_status(req)
content(req)
datasharing
