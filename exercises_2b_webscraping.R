library(rvest)


# ---------
# WIKIPEDIA
# ---------

wiki_url <- "https://en.wikipedia.org/wiki/R_(programming_language)"
local_wiki <- read_html(wiki_url)

local_wiki %>% 
  html_nodes(css = ".wikitable") %>% 
  html_table()




# ---------
# PLAYLIST
# ---------

#step1: build url
radio <- "radio1"
date <- "25-09-2018"

playlist_url <- paste0("https://www.relisten.be/playlists/", radio, "/", date, ".html")


#step 2: get local copy
local_playlist <- read_html(playlist_url)





local_playlist %>% 
  html_nodes(css = "#playlist")
