wordfeudcheck=function(){
   wf=read.table(pipe("pbpaste"),header=T,sep="\t",stringsAsFactors=FALSE) # read from the (Excel) clipboard
   cat(paste("Number of games: ",length(unique(wf$start)),".\n",sep=""))
   cat(paste("Number of errors (>7) detected: ",sum(nchar(paste(wf$used,wf$unused,sep=""))>7),".\n",sep=""))
   cat(paste("Total score of the game started at",wf$start[nrow(wf)],": ",
      tapply(wf$points,wf$start,sum)[length(unique(wf$start))],".\n",sep=""))
   wf$turn=supply::casenumber(wf$start)
   seconds=structure(sample(0:59,length(unique(wf$start)),replace=T),names=unique(wf$start))
   wf$start=paste(wf$start,sprintf("%02.0f",seconds[wf$start]),sep=":")
   if (!readline("Press \"n\" if the datafile should not be saved. ") %in% c("N","n"))
      {save(wf,file="/Users/ling-jwe/Documents/R/PACKAGES/wordgames/data/wordfeud.RData")
      cat(paste("Game saved to the package data folder.","\n"))}
}
