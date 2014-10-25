library(dplyr)
library(tidyr)
#Reading Data
feat<-read.table("./UCI HAR Dataset/features.txt")
x<-read.table("./UCI HAR Dataset/train/subject_train.txt")
x_t<-read.table("./UCI HAR Dataset/train/X_train.txt")
y_t<-read.table("./UCI HAR Dataset/train/y_train.txt")
x_tst<-read.table("./UCI HAR Dataset/test/X_test.txt")
y_tst<-read.table("./UCI HAR Dataset/test/y_test.txt")
act_label<-read.table("./UCI HAR Dataset/activity_labels.txt")
s_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
s_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
sub_tot<-unique(merge(s_train,s_test,all=T)) #Total of subjects

#Manipulating Data
dat_train<-data.frame(Subject=s_train$V1,Activity=y_t$V1,TYPE="Train",x_t)
dat_test<-data.frame(Subject=s_test$V1,Activity=y_tst$V1,TYPE="Test",x_tst)
mdat<-merge(dat_train,dat_test,all=T)
V2<-tolower(feat$V2)
dullc<-c(1,2,3)
V2<-c(c("Subject","Activity","Type"),V2)
V1<-c(dullc,feat$V1)
names<-data.frame(V1,V2)
mean_vec<-c(dullc,grep("mean()",names$V2))
std_vec<-grep("std()",names$V2)
comb_vec<-sort(c(mean_vec,std_vec))

mdat<-select(mdat,comb_vec)

#Name rows
actv_v<-data.frame(Act=mdat$Activity)
actv_v$type<-factor(actv_v$Act)
levels(actv_v$type)<-list(
Walking="1",
W.upstair="2",
W.downstair="3",
Sitting="4",
Standing="5",
laying="6"
)

mdat<-mutate(mdat,Activity=actv_v$type)

#Name Columns
col_names<-names(mdat)
col_n<-c("Subject","Activity","Type")
for (i in 4:length(col_names)){
	 val1<-as.character(feat$V2[extract_numeric(col_names[[i]])] )
	 col_n<-c(col_n, val1)
}

colnames(mdat)<-col_n


#Sort Data and getting averages
for (e in 1:nrow(sub_tot)){
for (i in 4:length(col_n)){
by_s<-data.frame(Act=mdat$Activity,Sub=mdat$Subject,V1=mdat[,i])
mbs<-group_by(by_s,Act)
mbs<-filter(mbs,Sub==e)
res<-summarize(mbs,Avg=mean(V1),Sub=e)
if(i==4){
temp<-res$Avg
final<-data.frame(Activity=res$Act,Subject=res$Sub,v1=temp)}
else{
temp<-res$Avg
final<-data.frame(final,v1=temp)}
}
if (e==1){
Avg_Summ<-final}
else{
Avg_Summ<-merge(Avg_Summ,final,all=T)}
}

col_n<-c("Activity","Subject")
for (i in 4:length(col_names)){
	 val1<-as.character(feat$V2[extract_numeric(col_names[[i]])] )
	 col_n<-c(col_n, val1)
}

colnames(Avg_Summ)<-col_n

#writing down files
write.table(Avg_Summ,file="Step5.txt",row.name=F)
