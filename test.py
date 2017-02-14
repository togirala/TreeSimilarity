import numpy as np
import pandas as pd
# import csv


# print(open('C:\Users\I854540\WorkSpace\Tree Similarity\Python Comparision\Python-2.7.10\Python2710.csv').read())

previousVersion = pd.DataFrame()

somet = open('C:\Users\I854540\WorkSpace\Tree Similarity\Python Comparision\Python-2.7.10\Python2710.csv').read()

some = pd.DataFrame()

f = pd.DataFrame({"Input": [pd.read_csv('C:\Users\I854540\WorkSpace\Tree Similarity\Python Comparision\Python-2.7.10\Python2710.csv')]})
some = some.append(f)

somef = pd.read_csv('C:\Users\I854540\WorkSpace\Tree Similarity\Python Comparision\Python-2.7.10\Python2710.csv')

somef.to_csv('somef.csv', sep='\t', encoding='utf-8')
x = pd.DataFrame(print(somef))


x.to_csv('x.csv', sep='\t', encoding='utf-8')







# some = some.append(f)

# print(len(somet))

# print(type(somet))






# some = somet.rsplit()




# df1 = pd.DataFrame(np.random.randn(10, 4), columns=['a', 'b', 'c', 'd'])
# previousVersion.loc[:, [0]] = somet




# print(df1)




# previousVersion = pd.read_csv('Python Comparision\Python-2.7.10\Python2710.csv')



# previousVersion.columns = ["input"]

# print(previousVersion)
# print(df1)



# print(len(str(previousVersion[3:4])))

# print(str(previousVersion[1:2]))
# for x in range(len(str(previousVersion[1:2]))):
	
# 	print(str(previousVersion)[x])







# for x in range(len(previousVersion[x:x+1])):
# 	print(completeString[x])









# recentVersion = pd.read_csv('Mars2.csv')

# previousVersion.columns = ['Complete Path']


# print(previousVersion[3:4])

# completeString = str(previousVersion.loc[4])
# print(completeString)
# splitString = completeString.split("/")
# print(splitString)

# print(recentVersion.shape[1])









# count = 1


# for x in range(len(previousVersion)):

  
#   completeString = str(previousVersion[x:x+1])
#   # print(completeString)
#   splitString = completeString.split("/")

  
# #   # filename = splitString[length(splitString)]
# #   # parentFolder = splitString[length(splitString)-1]
# #   # path = NULL
# #   # # for numLinks in 2:length(splitString)-1:
  
# #   # #   path = append.path,splitString[numLinks],"/")
  
  
# #   # previousVersion[count,2] = path
# #   # previousVersion[count,3] = parentFolder
# #   # previousVersion[count,4] = filename
# #   # previousVersion[count,5] = numLinks
#   count = count+1
# print(count)



# print(completeString)
# print(len(completeString))




# print(splitString)

# x = 800
# print(x)
# print(count)

# # print(len(previousVersion))

# print(previousVersion.loc[x])
# print(str(previousVersion.loc[x]))
# print(previousVersion.loc[47])

# print(recentVersion.loc[47])


# print(previousVersion)


# print(len(your_list[5]))






# setwd("/Users/I854540/WorkSpace/Tree Similarity")
# previousVersion <- read.csv("Python Comparision/Python-2.7.10/Python2710.csv")
# recentVersion <- read.csv("Python Comparision/Python-2.7.11/src/Python2711.csv")


# count = 1
# for(completeString in previousVersion[,1])
# {
  
#   splitString <- unlist(strsplit(completeString, "/"))
  
#   filename <- splitString[length(splitString)]
#   parentFolder <- splitString[length(splitString)-1]
#   path <- NULL
#   for(numLinks in 2:length(splitString)-1)
#   {
#     path <- paste0(path,splitString[numLinks],"/")
#   }
  
#   previousVersion[count,2] <- path
#   previousVersion[count,3] <- parentFolder
#   previousVersion[count,4] <- filename
#   previousVersion[count,5] <- numLinks
#   count = count+1
# }



# count = 1
# for(completeString in recentVersion[,1])
# {
#   
#   splitString <- unlist(strsplit(completeString, "/"))
#   
#   filename <- splitString[length(splitString)]
#   parentFolder <- splitString[length(splitString)-1]
#   path <- NULL
#   for(numLinks in 2:length(splitString)-1)
#   {
#     path <- paste0(path,splitString[numLinks],"/")
#   }
#   
#   recentVersion[count,2] <- path
#   recentVersion[count,3] <- parentFolder
#   recentVersion[count,4] <- filename
#   recentVersion[count,5] <- numLinks
#   
#   count = count+1
# }
# 
# 
# colnames(recentVersion)[1] <- 'Complete String'
# colnames(recentVersion)[2] <- 'Path'
# colnames(recentVersion)[3] <- 'Parent Folder'
# colnames(recentVersion)[4] <- 'Filename'
# colnames(recentVersion)[5] <- '#Links'






# uniqueFFPrevious <- unique(paste0(previousVersion$`Parent Folder`, previousVersion$Filename))
# 
# uniqueFFRecent <- unique(paste0(recentVersion$`Parent Folder`, recentVersion$Filename))
# 
# 
# 
# levDist <- adist(uniqueFFPrevious, uniqueFFRecent)
# 
# 
# count = 1
# for(i in 1:dim(levDist)[1])
# {
#   for(j in 1:dim(levDist)[2])
#   {
#     if(levDist[i,j] == 0)
#     {
#       count = count+1
#       
#     }
#   }
# }
# 
# 
# treeSimilarity = (count/length(uniqueFFRecent))*100
# 
# print(paste('Structure Similarity:', treeSimilarity))