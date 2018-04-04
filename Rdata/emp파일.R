setwd("c:/r")
getwd()
emp <- read.csv ("emp.csv", header = T , stringsAsFactors = F)
str(emp)
names(emp)

setwd("c:/r")
getwd()
dept <- read.csv ("dept.csv", header = T , stringsAsFactors = F)
str(dept)
names(dept)


setwd("c:/r")
getwd()
loc <- read.csv ("loc.csv", header = T , stringsAsFactors = F)
str(loc)
names(loc)



#orderBy 사용을 위한
install.packages("doBy")
library("doBy")

#날짜함수 사용을 위한 lubridate
install.packages("lubridate")
library(lubridate)



