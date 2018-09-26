
url_DC <- "https://www.datacamp.com/courses/free-introduction-to-r"

local_html_DC <- read_html(url_DC)


#selecting parts
local_html_DC %>% 
  html_nodes(css = "h4") 

local_html_DC %>% 
  html_nodes(css = ".chapter__title")

local_html_DC %>% 
  html_nodes(css = ".header-hero__stat") %>% html_attr(name = "class")




# selecting info
local_html_DC %>% 
  html_nodes(css = ".header-hero__stat--participants") %>% 
  html_text() %>% 
  readr::parse_number()





