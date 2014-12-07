getimg<-function(url)
  ## In order to get the list of the certain column of 1024
{
  library(XML)
  library(httr)
  html<-GET(url) ## Get the html file
  content<-content(html,as="text") 
  parsedHtml<-htmlTreeParse(content,useInternalNodes=T,encoding="GBK")
  ## Parsed the html file
  imglist<-xpathSApply(parsedHtml,"//img[contains(@src,'.jpg')]",xmlGetAttr,"src")
  imglist[1:3]
}