library(shiny)
library(plotly)
library(dplyr)
library(tidyverse)
library(stringr)
library(ggplot2)

twitch_df <- read.csv("twitch.csv")



piedata_df <- twitch_df %>% group_by(Year)
piedata_df <- twitch_df[c(7,10:12 )]

df16 <- piedata_df$Year == 2016
df16 <- piedata_df[piedata_df$Year == 2016,]
aff16 <- sum(df16$Active.affiliates)/ 12
part16 <- sum(df16$Active.partners)/ 12
free16 <- sum(df16$Peak.channels)/ 12
pie16 <- data.frame(aff16, part16,free16)

df17 <- piedata_df$Year == 2017
df17 <- piedata_df[piedata_df$Year == 2017,]
aff17 <- sum(df17$Active.affiliates)/ 12
part17 <- sum(df17$Active.partners)/ 12
free17 <- sum(df17$Peak.channels)/ 12
pie17 <- data.frame(aff17, part17,free17)

df18 <- piedata_df$Year == 2018
df18 <- piedata_df[piedata_df$Year == 2018,]
aff18 <- sum(df18$Active.affiliates)/ 12
part18 <- sum(df18$Active.partners)/ 12
free18 <- sum(df18$Peak.channels)/ 12
pie18 <- data.frame(aff18, part18,free18)

df19 <- piedata_df$Year == 2019
df19 <- piedata_df[piedata_df$Year == 2019,]
aff19 <- sum(df19$Active.affiliates)/ 12
part19 <- sum(df19$Active.partners)/ 12
free19 <- sum(df19$Peak.channels)/ 12
pie19 <- data.frame(aff19, part19,free19)

df20 <- piedata_df$Year == 2020
df20 <- piedata_df[piedata_df$Year == 2020,]
aff20 <- sum(df20$Active.affiliates)/ 12
part20 <- sum(df20$Active.partners)/ 12
free20 <- sum(df20$Peak.channels)/ 12
pie20 <- data.frame(aff20, part20,free20)

df21 <- piedata_df$Year == 2021
df21 <- piedata_df[piedata_df$Year == 2021,]
aff21 <- sum(df21$Active.affiliates)/ 12
part21 <- sum(df21$Active.partners)/ 12
free21 <- sum(df21$Peak.channels)/ 12
pie21 <- data.frame(aff21, part21,free21)

df22 <-piedata_df$Year == 2022
df22 <- piedata_df[piedata_df$Year == 2022,]
aff22 <- sum(df22$Active.affiliates)/ 12
part22 <- sum(df22$Active.partners)/ 12
free22 <- sum(df22$Peak.channels)/ 12
pie22 <- c(aff22, part22,free22)

Affiliated <- c(aff16, aff17, aff18, aff19, aff20, aff21, aff22)
Partner <- c(part16, part17, part18, part19, part20, part21, part22)
Free_Agent <- c(free16, free17, free18, free19, free20, free21, free22)
combined <- c(Affiliated, Partner, Free_Agent)
Year <- c(2016, 2017, 2018, 2019, 2020, 2021, 2022)

pieunit <- data.frame(Year, Affiliated, Partner, Free_Agent)

group=c("Affiliates", "Active Partners", "Free Agents")




piepercent<- round(100*pie21/sum(pie21), 1)
#Input year value under this
pie(as.numeric(pie16), labels = piepercent, main = "2016 Annual Twitch Channel Status (In Percent)",col = rainbow(length(pie21)))
legend("topright", group, cex = 0.8,
       fill = rainbow(length(pie21)))

piepercent<- round(100*pie21/sum(pie21), 1)
pie(as.numeric(pie17), labels = piepercent, main = "2017 Annual Twitch Channel Status (In Percent)",col = rainbow(length(pie21)))
legend("topright", group, cex = 0.8,
       fill = rainbow(length(pie21)))

piepercent<- round(100*pie21/sum(pie21), 1)
pie(as.numeric(pie18), labels = piepercent, main = "2018 Annual Twitch Channel Status (In Percent)",col = rainbow(length(pie21)))
legend("topright", group, cex = 0.8,
       fill = rainbow(length(pie21)))

piepercent<- round(100*pie21/sum(pie21), 1)
pie(as.numeric(pie19), labels = piepercent, main = "2019 Annual Twitch Channel Status (In Percent)",col = rainbow(length(pie21)))
legend("topright", group, cex = 0.8,
       fill = rainbow(length(pie21)))

piepercent<- round(100*pie21/sum(pie21), 1)
pie(as.numeric(pie20), labels = piepercent, main = "2020 Annual Twitch Channel Status (In Percent)",col = rainbow(length(pie21)))
legend("topright", group, cex = 0.8,
       fill = rainbow(length(pie21)))

piepercent<- round(100*pie21/sum(pie21), 1)
pie(as.numeric(pie21), labels = piepercent, main = "2021 Annual Twitch Channel Status (In Percent)",col = rainbow(length(pie21)))
legend("topright", group, cex = 0.8,
       fill = rainbow(length(pie21)))

piepercent<- round(100*pie22/sum(pie22), 1)
pie(as.numeric(pie22), labels = piepercent, main = "2022 Annual Twitch Channel Status (In Percent)",col = rainbow(length(pie22)))
legend("topright", group, cex = 0.8,
       fill = rainbow(length(pie22)))




