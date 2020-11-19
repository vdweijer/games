tilesleft=function(tiles,language="dutch"){
table(rep(tiles.list[[language]]$tiles,tiles.list[[language]]$counts))-
table(factor(unlist(strsplit(tiles,split="")),
   levels=names(table(rep(tiles.list[[language]]$tiles,tiles.list[[language]]$counts)))))}
