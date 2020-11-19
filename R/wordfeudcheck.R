wordfeudcheck=function(){
   wf=read.table(pipe("pbpaste"),header=T,sep="\t",stringsAsFactors=FALSE) # read from the (Excel) clipboard
   cat(paste("Number of games: ",length(unique(wf$start)),".\n",sep=""))
   cat(paste("Number of errors (>7) detected: ",sum(nchar(paste(wf$used,wf$unused,sep=""))>7),".\n",sep=""))
   cat(paste("Total score of the last added game (",wf$start[nrow(wf)],"): ",
      tapply(wf$points,wf$start,sum)[length(unique(wf$start))],".\n",sep=""))
}
