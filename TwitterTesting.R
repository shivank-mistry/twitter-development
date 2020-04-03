# install.packages("rtweet")
# install.packages("tidytext")

library(rtweet)
library(tidytext)
library(ggplot2)
library(dplyr)

# sourced key files from upper file path, avoided publishing keys
source("../twitterkeys.R")

# create twitter token
twitter_token <- create_token(
  app = app_name,
  consumer_key = api_key,
  consumer_secret = api_key_secret,
  access_token = access_token,
  access_secret = access_token_Secret)

testing <- search_tweets(q = "#rstats", n = 50)

