# setwd("/Users/I854540/WorkSpace/Tree Similarity")
data_neo_java_previous <- read.csv("data-neo_java_web_sdk_previous.csv")
data_neo_java_recent <- read.csv("data-neo_java_web_sdk_recent.csv")

previousVersion <- data_neo_java_previous
recentVersion <- data_neo_java_recent


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









levDist <- adist(previousVersion$Filename, recentVersion$Filename)
levDistFolder <- adist(previousVersion$`Parent Folder`, recentVersion$`Parent Folder`)



uniQueFolders_previous <- unique(previousVersion$`Parent Folder`)
uniQueFolders_recent <- unique(recentVersion$`Parent Folder`)



levDistFolder <- adist(uniQueFolders_previous, uniQueFolders_recent)























num = 1
for(x in 1:dimension[1])
{
  for(y in 1:dimension[2])
  {
    if(levDist[x,y] == 0)
    {
      # files[num,2] <- data.frame(previousVersion[x,4], recentVersion[y,4])
      num = num+1
    }
    
  }
}



num = 1
for(x in 1:dimension[1])
{
  for(y in 1:dimension[2])
  {
    if(levDistFolder[x,y] == 0)
    {
      if(levDist[x,y] == 0)
      {
        # folders[num,2] <- data.frame(previousVersion[x,3], recentVersion[y,3])
        # files[num,2] <- data.frame(previousVersion[x,4], recentVersion[y,4])
        num = num+1
      }
      
    }
    
  }
}



dimension = dim(levDist)
















currentFolder <- data.frame()


num = 1
temp = 1
for(x in 1:length(uniQueFolders_previous))
{
  for(y in 1:length(uniQueFolders_recent))
  {
    if(levDistFolder[x,y] == 0)
    {
      
      # print(uniQueFolders_recent[y])
      currentFolder[num,1] <- uniQueFolders_recent[y]
      
      
      
      
      # for(y in )
      #   
      #   uniQueFolders_recent[y]
      # # files[num,2] <- data.frame(previousVersion[x,4], recentVersion[y,4])
      num = num+1
      
      
    }
    
  }
}





b = 1
for(p in 1:nrow(currentFolder))
{
  
  currentFiles[b,] <- subset(recentVersion, recentVersion$`Parent Folder` == currentFolder[p,1])
  b = b+1
}





















jc = 1
kc = 1

v = 1
for(j in 1:length(recentVersion$`Parent Folder`))
{
  jc = jc+1
  for(k in 1:length(uniQueFolders_recent))
  {
    kc = kc+1
    if(recentVersion[j,3] == uniQueFolders_recent[k])
    {
      print(unique(recentVersion$Filename))

      v = v+1
    }
    
  }
  
}


 








x = 3
y = 6


if(levDist[x,y] == 0)
{
print("hello World!")
}










xc = 1
yc = 1
num = 1
for(x in 1:dimension[1])
{
  # print(xc)
  # xc = xc+1
  for(y in 1:dimension[2])
  {
    # print(yc)
    # yc = yc+1
    if(levDistFolder[x,y] == 0 && levDist[x,y] == 0)
    {

      # print(recentVersion$Filename[y])
      num = num+1
    }
    
  }
}







d <- paste0(recentVersion$`Parent Folder`, recentVersion$Filename, recentVersion$`#Links`)

e <- paste0(previousVersion$`Parent Folder`, previousVersion$Filename, previousVersion$`#Links`)

f <- adist(d,e)


g <- dim(f)



df = 1

for(h in 1:g[1])
{
  for(l in 1:g[2])
  {
    if(f[h,l] == 0)
      print(d)
    df = df+1
  }
}





d <- paste0(recentVersion$`Parent Folder`, recentVersion$Filename)

e <- paste0(previousVersion$`Parent Folder`, previousVersion$Filename)


n <- unique(d)

m <- unique(e)


o <- adist(n,m)

q <- dim(o)

df = 1

for(h in 1:q[1])
{
  for(l in 1:q[2])
  {
    if(o[h,l] == 0)
      df = df+1
  }
}


















