library(rvest)

#title
title_url <- read_html("https://www.nature.com/nature/research")
title_list <- title_url %>%
  html_nodes(".extra-tight-line-height a") %>%
  html_text()

length(title_list)

#description

description_url <- read_html("https://www.nature.com/nature/research")
description_list <- description_url %>%
  html_nodes("time") %>%
  html_text()

length(description_list)

#table

table <- data.frame(title_list, description_list)

table
