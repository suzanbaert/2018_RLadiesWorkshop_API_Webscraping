# API exercises


# --------
#number 1
# --------



library(httr)


# url
url_ex1 <- "http://api.open-notify.org/iss-now.json"


# GET request
response <- GET(url_ex1)


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


#url needed: "http://api.open-notify.org/iss-pass.json?lat=LAT&lon=LON"


# build your URL
lat <- 4.3517103
lon <- 50.8503396


#option 1: paste together
url_ex2 <- paste0("http://api.open-notify.org/iss-pass.json?lat=", lat, "&lon=", lon)


#option2: 
url_built <- build_url("http://api.open_notify.org/iss-pass.json", list(lat = 4.35, lon=50.85))



# GET request
response_ex2 <- GET(url_ex2)


# parse data
content_ex2 <- content(response_ex2)


#getting your info out
str(content_ex2, max.depth =1 )

#extracting risetime
risetime <- purrr::map(content_ex2$response, "risetime")
risetime <- purrr::map_dbl(content_ex2$response, "risetime")

risetime <- purrr::map_df(content_ex2$response, c("risetime", "duration"))
