today <-function( doc )
{
  urllist<-getlist()
  for (i in 1:length(urllist))
  {
    imglist<-getimg(urllist[i])
    imgname<-paste0(doc,i)
    for (j in 1:length(imglist))
    {
      filename<-paste0(imgname,"-",j,".jpg")
      download.file(imglist[j],destfile=filename,mode="wb")
    
    }
  }
  return()
}