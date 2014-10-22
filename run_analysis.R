# Getting & Cleaning Dta Class Project.
# Oct 21 2014 - Jimko
# Unzip the Samsun data to the folder where this script is located and set your working directory to same.
# requires dplyr library to be installed.

library("dplyr")
Src <- 'UCI HAR Dataset'
SrcTrn <- paste(Src,'/train/',sep="")
SrcTst <- paste(Src,'/test/',sep="")

#------------------------
#--Global Data Sets
#------------------------
#Descriptions for each activity code
ActvDesc <- read.table(paste(Src,'/activity_labels.txt',sep=""))
colnames(ActvDesc) <- c("Activity_Code","Activity")

#Measure descriptions for each element in the 561 feature vector
Measures <- read.table(paste(Src,'/features.txt',sep=""))
regex <- "mean|std"
ndx <- grep(regex,Measures$V2,perl=T)  #Index of all the measure column names containing mean or std

#------------------------
#--Train Data Sets
#------------------------
#A 561-feature vector with time and frequency domain variables.
Xtrn <- read.table(paste(SrcTrn,'X_train.txt',sep=""))

#The Activity Code for each vector
Ytrn <- read.table(paste(SrcTrn,'y_train.txt',sep=""))
colnames(Ytrn) <- 'Activity_Code'

#The Subject Code for each vector
Strn <- read.table(paste(SrcTrn,'subject_train.txt',sep=""))
colnames(Strn) <- 'Subject_Code'

Tmp <- Xtrn[,ndx]
colnames(Tmp) <- Measures[ndx,"V2"]
Trn <- cbind(Strn,Ytrn,Tmp)  #Final Training DS
rm(Tmp,Strn,Ytrn)

#------------------------
#--Test Data Sets
#------------------------
#A 561-feature vector with time and frequency domain variables.
Xtst <- read.table(paste(SrcTst,'X_test.txt',sep=""))

#The Activity Code for each vector
Ytst <- read.table(paste(SrcTst,'y_test.txt',sep=""))
colnames(Ytst) <- 'Activity_Code'

#The Subject Code for each vector
Stst <- read.table(paste(SrcTst,'subject_test.txt',sep=""))
colnames(Stst) <- 'Subject_Code'

Tmp <- Xtst[,ndx]
colnames(Tmp) <- Measures[ndx,"V2"]
Tst <- cbind(Stst,Ytst,Tmp)  #Final Testing DS
rm(Tmp,Stst,Ytst)

#Merge them
final <- rbind(Trn,Tst)
rm(Trn,Tst)

#Add activity code & subject factors
#Activity <- factor(final$Activity_Code,levels=ActvDesc$V1,labels=ActvDesc$V2)
#cbind(Activity,final)
r <- inner_join(final,ActvDesc) %>%
     group_by (Subject_Code, Activity) %>%
     select(Subject_Code, Activity,starts_with("t")) %>%
     summarise_each(funs(mean))

write.csv(r,file="tidy_project3.csv",row.names=FALSE,col.names=TRUE)
#rm(r,final)