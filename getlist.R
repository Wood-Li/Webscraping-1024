getlist<-function(url="http://t66y.com/thread0806.php?fid=2")
  ## In order to get the list of the certain column of 1024
{
library(XML)
library(httr)
html<-GET(url) ## Get the html file
content<-content(html,as="text") 
parsedHtml<-htmlTreeParse(content,useInternalNodes=T,encoding="GBK")
## Parsed the html file
filelist<-xpathSApply(parsedHtml,"//tr[@align='center']/td/a[@target='_blank']",xmlAttrs)
## Find the urls which we want
urllist<-filelist[2,]
for(i in 1:length(urllist))
  {
  urllist[i]<-paste0("http://t66y.com/",urllist[i])
  }
## Make the urls completed
urllist[6:50]
## Return list
}