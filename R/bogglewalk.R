bogglewalk=function(squaresize=16){
   walklist=games::walklist[[as.character(squaresize)]]
   walk=rep(0L,squaresize);walk[1]=sample(1:squaresize,1) # start is the first cell in the matrix
   for(i in 2:squaresize){
      walk[i]=ifelse( sum(walklist[[walk[(i-1)]]] %in% walk[1:(i-1)])==length(walklist[[walk[(i-1)]]]),0,
                        ifelse( sum(!(walklist[[walk[(i-1)]]] %in% walk[1:(i-1)]))==1,
                                walklist[[walk[(i-1)]]][ !(walklist[[walk[(i-1)]]] %in% walk[1:(i-1)])],
                                sample(walklist[[walk[(i-1)]]][!(walklist[[walk[(i-1)]]] %in% walk[1:(i-1)])],1)  ))
      if(walk[i]==0) return()} # returns NULL
   return(walk)}
