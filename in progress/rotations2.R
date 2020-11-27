# Four x Four matrix.
# There are three unique starting points: corner, one next to the corner, and one of
# the four cells of the "inner" (2x2) square. For the outer square there are four rotations and
# 2 mirror images. For the inner square, there are four rotations. But they cannot rotate
# independently of one another.

walks=bogglewalks[["16"]] # 201125: 331K different walks

#
table(walks[walks[,1]%in%c(1,4,16,13),1]) # corners: 36K
table(walks[walks[,1]%in%c(2,3,8,12,14,15,5,9),1])  # outer square: 17K
table(walks[walks[,1]%in%c(6,7,11,10),1]) # inner square: 12K

# Rotations (also as a dataset in the games library).
T0=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16) # no rotation
T1=c(13,9,5,1,14,10,6,2,15,11,7,3,16,12,8,4)
T2=c(16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1)
T3=c(4,8,12,16,3,7,11,15,2,6,10,14,1,5,9,13)
T4=c(4,3,2,1,8,7,6,5,12,11,10,9,16,15,14,13)
T5=c(1,5,9,13,2,6,10,14,3,7,11,15,4,8,12,16)
T6=c(13,14,15,16,9,10,11,12,5,6,7,8,1,2,3,4)
T7=c(16,12,8,4,15,11,7,3,14,10,6,2,13,9,5,1)

# Transforming the walks that can be obtained by rotating the square:
basicwalks=rbind(
t(apply(walks[walks[,1]==1,],1,function(x){T0[x]})),
t(apply(walks[walks[,1]==4,],1,function(x){T1[x]})),
t(apply(walks[walks[,1]==16,],1,function(x){T2[x]})),
t(apply(walks[walks[,1]==13,],1,function(x){T3[x]})),
t(apply(walks[walks[,1]==2,],1,function(x){T0[x]})),
t(apply(walks[walks[,1]==8,],1,function(x){T1[x]})),
t(apply(walks[walks[,1]==15,],1,function(x){T2[x]})),
t(apply(walks[walks[,1]==9,],1,function(x){T3[x]})),
t(apply(walks[walks[,1]==3,],1,function(x){T4[x]})),
t(apply(walks[walks[,1]==5,],1,function(x){T5[x]})),
t(apply(walks[walks[,1]==14,],1,function(x){T6[x]})),
t(apply(walks[walks[,1]==12,],1,function(x){T7[x]})),
t(apply(walks[walks[,1]==6,],1,function(x){T0[x]})),
t(apply(walks[walks[,1]==7,],1,function(x){T1[x]})),
t(apply(walks[walks[,1]==11,],1,function(x){T2[x]})),
t(apply(walks[walks[,1]==10,],1,function(x){T3[x]})))

basicwalks=basicwalks[!duplicated(basicwalks),]
table(basicwalks[,1]) # only values are 1, 2 and 6, 37K, 17K and 12K respectively. Total 68K rows.

# Next step is to see if we can still find new walks from any of these three
# starting points.

