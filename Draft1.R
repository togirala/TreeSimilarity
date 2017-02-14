setwd("/Users/I854540/WorkSpace/Tree Similarity")
previousVersion <- read.csv("Python Comparision/Python-2.7.10/Python2710.csv")
recentVersion <- read.csv("Python Comparision/Python-2.7.11/Python2711.csv")


count = 1
for(completeString in previousVersion[,1])
{
  
  splitString <- unlist(strsplit(completeString, "/"))
  
  filename <- splitString[length(splitString)]
  parentFolder <- splitString[length(splitString)-1]
  path <- NULL
  for(numLinks in 2:length(splitString)-1)
  {
    path <- paste0(path,splitString[numLinks],"/")
  }
  
  previousVersion[count,2] <- path
  previousVersion[count,3] <- parentFolder
  previousVersion[count,4] <- filename
  previousVersion[count,5] <- numLinks
  
  count = count+1
}


colnames(previousVersion)[1] <- 'Complete String'
colnames(previousVersion)[2] <- 'Path'
colnames(previousVersion)[3] <- 'Parent Folder'
colnames(previousVersion)[4] <- 'Filename'
colnames(previousVersion)[5] <- '#Links'


count = 1
for(completeString in recentVersion[,1])
{
  
  splitString <- unlist(strsplit(completeString, "/"))
  
  filename <- splitString[length(splitString)]
  parentFolder <- splitString[length(splitString)-1]
  path <- NULL
  for(numLinks in 2:length(splitString)-1)
  {
    path <- paste0(path,splitString[numLinks],"/")
  }
  
  recentVersion[count,2] <- path
  recentVersion[count,3] <- parentFolder
  recentVersion[count,4] <- filename
  recentVersion[count,5] <- numLinks
  
  count = count+1
}


colnames(recentVersion)[1] <- 'Complete String'
colnames(recentVersion)[2] <- 'Path'
colnames(recentVersion)[3] <- 'Parent Folder'
colnames(recentVersion)[4] <- 'Filename'
colnames(recentVersion)[5] <- '#Links'


FFPrevious <- paste0(previousVersion$`Parent Folder`, previousVersion$Filename)
uniqueFFPrevious <- unique(FFPrevious)

FFRecent <- paste0(recentVersion$`Parent Folder`, recentVersion$Filename)
uniqueFFRecent <- unique(FFRecent)


levDist <- adist(uniqueFFPrevious, uniqueFFRecent)


count2 = 1
for(i in 1:dim(levDist)[1])
{
  for(j in 1:dim(levDist)[2])
  {
    if(levDist[i,j] == 0)
    {
      count2 = count2+1
      
    }
  }
}


treeSimilarity = (count2/length(uniqueFFRecent))*100

print(paste('Structure Similarity:', treeSimilarity))


