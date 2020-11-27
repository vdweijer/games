wordfeudplots=function(){
   library(ggplot2)
   mygames$turn=casenumber(mygames$start)
   ggplot(mygames,aes(x=factor(turn),y=points,col=turn))+geom_boxplot()
   }
