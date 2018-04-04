setwd("c:/r")
getwd()
emp <- read.csv ("emp.csv", header = T , stringsAsFactors = F)
str(emp)
names(emp)

#KoNLP
#install.packages("KoNLP")
library(KoNLP)


#orderBy 사용을 위한
#install.packages("doBy")
library("doBy")

#날짜함수 사용을 위한 lubridate
#install.packages("lubridate")
library(lubridate)


#sql을 이용해서 데이터를 처리
#install.packages("sqldf")
library(sqldf)

#ddply를 이용한 함수를 사용하기 위해
#install.packages("plyr")
library(plyr)

#dplyr
#install.packages("dplyr")
library(dplyr)


#reshape2
#install.packages("reshape2")
library(reshape2)


#stringr
#install.packages("stringr")
library(stringr)


#그래프
#install.packages("plotrix")
library(plotrix)


#jpeg
#install.packages("jpeg")
library(jpeg)


#datasets
#library(help=datasets)

#animation(그래프)
#install.packages("animation")
library(animation)

#png파일 읽기
#install.packages("png")
library(png)

#RJDBC sql과 R연결하기
library(RJDBC)
jdbcDriver <- JDBC(driverClass="oracle.jdbc.OracleDriver", classPath="C:/r/ojdbc6.jar")
conn <- dbConnect(jdbcDriver, "jdbc:oracle:thin:@localhost:1521/xe", "hr",  "hr")

# google map
##ggmap : google map, stamen map 을 정적으로 보여주는 기능의 패키지
#install.packages("ggmap")
library(ggmap)

#ggplot2 : 그래픽 출력을 위한 기능을 제공하는 패키지
#install.packages("ggplot2")
library(ggplot2)

#wordcloud
#install.packages("wordcloud")
library(wordcloud)

#wordcloud2
#install.packages("wordcloud2")
library(wordcloud2)

#maps
#install.packages("maps")
library(maps)

#rvest
#install.packages('rvest')
library(rvest)

#class(머신러닝)
library(class)
library(gmodels)

#오스트리아 수도 빈 비엔나 기술통계학과 개발
#install.packages("e1071")
library(e1071)


#정보획득량이 많은 변수를 찾기위한 함
#install.packages("FSelector")
library(FSelector)
#install.packages("rattle")
library(rattle)
library(rpart.plot)

#결정 트리 작성중 중요도 비교할 때 사용
#install.packages("C50")
library(C50)

#데이터에 대한 모델 훈련
#install.packages("RWeka")
library(RWeka)

#군집도 시각화시 사용하는 것
#install.packages("factoextra")
library(factoextra)
#install.packages("tripack")
library(tripack)

#install.packages("arules") # apriori함수를 사용하기 위해 설치
library(arules)


#install.packages("sna") # 네트워크 그래프 그리기위한 설치 (연관성을 보여주기 위해서)
#install.packages("rgl")
library(sna)
library(rgl)



★write.csv
- 데이터프레임을 csv file로 저장

white.csv(df,file='c:/r/df.csv', row.names= FALSE)


# 사이드쪽에있는 Plots창에서 행렬의 수 만큼 그래프를 띄워서 볼수있는 방법
# 콘솔에서는 작동하고 Rnote에서는 작동하지 않는다.
graphics.off()
par(mfrow=c(1,1))   #기본값
par(mfrow=c(2, 2))









