# load sql library in order to filter the data to be read
library("sqldf")
#set the working directory to the data folder
setwd("C:/Users/Familia/Dropbox/Maria/R/R Programming/Exploratory data analysis/week 1")

#only select records of '1/2/2007' or '2/2/2007'
select<-"select * from file where Date = '1/2/2007' or Date='2/2/2007'"
data<-read.csv.sql(file="household_power_consumption.txt", sql = select, header = TRUE, sep = ";") 

#Date;Time;Global_active_power;Global_reactive_power;Voltage;Global_intensity;Sub_metering_1;Sub_metering_2;Sub_metering_3

