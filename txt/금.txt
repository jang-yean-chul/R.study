# R 크롤링 하는법

install.packages("rvest")
library(rvest)
library(dplyr)

html<- read_html("http://search.joins.com/News?Keyword=%EB%B9%85%EB%8D%B0%EC%9D%B4%ED%84%B0&SortType=New&SearchCategoryType=News&PeriodType=All&ScopeType=All&ImageType=All&JplusType=All&BlogType=All&ImageSearchType=Image&TotalCount=0&StartCount=0&IsChosung=False&IssueCategoryType=All&IsDuplicate=True&Page=1&PageSize=3&IsNeedTotalCount=True")

html
{xml_document}
<html>
[1] <head>\n<meta http-equiv="Content-Type" content="text/html; char ...
[2] <body class="aside_off">\r\n        <input type="hidden" value=" ...

url <- html_nodes(html,css = ".list_default .headline")%>% #스타일속성은 .으로
  html_nodes('a')%>%
  html_attr('href')

url
[1] "http://news.joins.com/article/22319631"
[2] "http://news.joins.com/article/22319607"
[3] "http://news.joins.com/article/22319597"
[4] "http://news.joins.com/article/22319598"
[5] "http://news.joins.com/article/22303430"
[6] "http://news.joins.com/article/22263911"
[7] "http://news.joins.com/article/22263891"
[8] "http://news.joins.com/article/22247317"
[9] "http://news.joins.com/article/22320837"
[10] "http://news.joins.com/article/22320296"
[11] "http://news.joins.com/article/22319892"
[12] "http://news.joins.com/article/22319891"

html<- read_html("http://news.joins.com/article/22319631")

html_node(html, "#article_body")%>% # id 속성의 값을 찾을때는 #으로
  html_text()


# 네이버 스포츠 뉴스 크롤링

html1 <- read_html("http://sports.news.naver.com/wfootball/index.nhn")

html1
{xml_document}
<html lang="ko">
[1] <head>\n<meta http-equiv="Content-Type" content="text/html; char ..."
[2] <body>\n<!-- 사이드 광고 -->\n<div id="veta_skin_left" data-veta-prev ...

url1 <- html_nodes(html1,".home_news_list")%>% 
  html_nodes('a')%>%
  html_attr('href')

url1
[1] "/wfootball/news/read.nhn?oid=413&aid=0000061292"
[2] "/wfootball/news/read.nhn?oid=139&aid=0002086465"
[3] "/wfootball/news/read.nhn?oid=413&aid=0000061291"
[4] "/wfootball/news/read.nhn?oid=139&aid=0002086462"
[5] "/wfootball/news/read.nhn?oid=343&aid=0000078764"
[6] "/wfootball/news/read.nhn?oid=529&aid=0000020077"
[7] "/wfootball/news/read.nhn?oid=413&aid=0000061286"
[8] "/wfootball/news/read.nhn?oid=497&aid=0000000322"
[9] "/wfootball/news/read.nhn?oid=413&aid=0000061283"
[10] "/wfootball/news/read.nhn?oid=216&aid=0000092951"
[11] "/wfootball/news/read.nhn?oid=413&aid=0000061274"
[12] "/wfootball/news/read.nhn?oid=139&aid=0002086450"
[13] "/wfootball/news/read.nhn?oid=139&aid=0002086443"
[14] "/wfootball/news/read.nhn?oid=216&aid=0000092946"
[15] "/wfootball/news/read.nhn?oid=343&aid=0000078750"
[16] "/wfootball/news/read.nhn?oid=343&aid=0000078754"
[17] "/wfootball/news/read.nhn?oid=413&aid=0000061270"
[18] "/wfootball/news/read.nhn?oid=139&aid=0002086446"
[19] "/wfootball/news/read.nhn?oid=413&aid=0000061267"
[20] "/wfootball/news/read.nhn?oid=216&aid=0000092950"

# 네이버 는 뒤어 파트 별 뉴스가 붙는 형식 paste로 나온 주소를 붙여줌
html2 <- read_html(paste("http://sports.news.naver.com",url,sep = "")[1])

html_node(html2, "#newsEndContents")%>% 
html_text()


# 네이버 금융 크롤링

html3 <- read_html("http://finance.naver.com/item/board.nhn?code=050890",encoding='euc-kr')

url2 <- html_nodes(html3,"table.type2 td")%>% 
  html_nodes('a')%>%
  html_attr('href')

url2
[1] "/item/board_read.nhn?code=050890&nid=76438576&st=&sw=&page=1"
[2] "/item/board_read.nhn?code=050890&nid=76419902&st=&sw=&page=1"
[3] "/item/board_read.nhn?code=050890&nid=76416388&st=&sw=&page=1"
[4] "/item/board_read.nhn?code=050890&nid=76416234&st=&sw=&page=1"
[5] "/item/board_read.nhn?code=050890&nid=76411131&st=&sw=&page=1"
[6] "/item/board_read.nhn?code=050890&nid=76404902&st=&sw=&page=1"
[7] "/item/board_read.nhn?code=050890&nid=76396238&st=&sw=&page=1"
[8] "/item/board_read.nhn?code=050890&nid=76390189&st=&sw=&page=1"
[9] "/item/board_read.nhn?code=050890&nid=76391255&st=&sw=&page=1"
[10] "/item/board_read.nhn?code=050890&nid=76387931&st=&sw=&page=1"
[11] "/item/board_read.nhn?code=050890&nid=76367946&st=&sw=&page=1"
[12] "/item/board_read.nhn?code=050890&nid=76379538&st=&sw=&page=1"
[13] "/item/board_read.nhn?code=050890&nid=76362546&st=&sw=&page=1"
[14] "/item/board_read.nhn?code=050890&nid=76347516&st=&sw=&page=1"
[15] "/item/board_read.nhn?code=050890&nid=76337724&st=&sw=&page=1"
[16] "/item/board_read.nhn?code=050890&nid=76313105&st=&sw=&page=1"
[17] "/item/board_read.nhn?code=050890&nid=76306100&st=&sw=&page=1"
[18] "/item/board_read.nhn?code=050890&nid=76302643&st=&sw=&page=1"
[19] "/item/board_read.nhn?code=050890&nid=76293629&st=&sw=&page=1"
[20] "/item/board_read.nhn?code=050890&nid=76282965&st=&sw=&page=1"

# 네이버 는 뒤어 파트 별 뉴스가 붙는 형식 paste로 나온 주소를 붙여줌
html4 <- read_html(paste("http://finance.naver.com",url2,sep = "")[2],encoding='euc-kr')

html_node(html4, "#body")%>% 
  html_text()

html5 <- NULL
gum <- NULL

for (i in 1:length(url2)) { 
html5 <- read_html(paste("http://finance.naver.com",url2,sep = "")[i],encoding='euc-kr')

gum[i]<-html_node(html5, "#body")%>% 
      html_text()
}

gum

gum<-gsub('\r',' ',gum)
g1<-SimplePos09(gum)
g2<-unlist(str_match_all(g1, '([A-Z가-힣]+)/N'))
g2<-g2[!str_detect(g2, '/')]
head(g2)

g3<-g2[str_length(g2)>1]
gt<-table(g3)

wordcloud2(gt,size = 0.5)
