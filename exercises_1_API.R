# API exercises


#number 1

library(httr)

response <- GET("http://api.open-notify.org/iss-now.json")


#json data
content <- content(response, as = "text")


#content
content

#prettier
jsonlite::prettify(content)

#parsing json to r list
content_jsonlite <- jsonlite::fromJSON(content)


#or much shorter - json format is autodetected and parsed
content_parsed <- content(response)





# number 2

library(httr)
library(jsonlite)

lat <- 4.3517103
lon <- 50.8503396


#url needed: "http://api.open-notify.org/iss-pass.json?lat=LAT&lon=LON"

#option 1: paste together
url <- paste0("http://api.open-notify.org/iss-pass.json?lat=", lat, "&lon=", lon)


#option2: 
url_built <- build_url("http://api.open_notify.org/iss-pass.json", list(lat = 4.35, lon=50.85))

GET(url)

