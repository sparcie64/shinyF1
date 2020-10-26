library(tidyverse)
library(dplyr)
library(tidyquant)
library(lubridate)
#NA s verwijderen
driversnona<- drivers %>%
  filter(!number=="\\N")
#datums van races omzetten naar goed formaat +filteren
races <-races %>%
  mutate(
    date = ymd(date)
  ) %>%
  filter(date > ymd("2018-01-01"))%>%
  filter(date < ymd("2020-01-01"))

#koppel races aan bestuurders
stanceswithteams<-driverswithoutna %>%
  select(team,driverId) %>%
  inner_join(driverstandings)

withDates<-races %>%
  select(date,raceId) %>%
  inner_join(races)
