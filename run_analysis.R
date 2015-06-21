library(stats)

n_measurements <- 561

#merge the data sets

x_test <- read.table("./test//X_test.txt")
y_test <- read.table("./test//y_test.txt")
subj_test = read.table("./test/subject_test.txt")
x_test <- cbind(x_test, activity=y_test[[1]])
x_test <- cbind(x_test, subject=subj_test[[1]])

x_train <- read.table("./train//X_train.txt")
y_train <- read.table("./train//y_train.txt")
subj_train <- read.table("./train/subject_train.txt")
x_train <- cbind(x_train, activity=y_train[[1]])
x_train <- cbind(x_train, subject=subj_train[[1]])

merged <- rbind(x_test, x_train)

#Assign meaningful names to the activities in the data set

merged$activity <- as.factor(merged$activity)
levels(merged$activity) <- read.table("activity_labels.txt", stringsAsFactors=FALSE)[[2]]

#descriptive variable names

names(merged)[1:n_measurements] <- read.table("features.txt", stringsAsFactors = FALSE)[[2]]

#Extract the mean and std. dev. for each measurement
indices <- union(grep("mean()", names(merged)), grep("std()", names(merged)))
indices <- append(indices, c(n_measurements + 1, n_measurements + 2))
merged <- merged[, indices]

#Calculate final tidy data set

means_activity <- by(merged[,1:(length(indices) - 2)], merged$activity, colMeans)
means_subject <- by(merged[,1:(length(indices) - 2)], merged$subject, colMeans)

result1 <- data.frame(matrix(unlist(means_activity), nrow=length(means_activity), byrow=T))
names(result1) <- names(merged)[1:79]
result1 <- cbind(result1, activity=rownames(result1))
result1$subject <- NA
levels(result1$activity) <- read.table("activity_labels.txt", stringsAsFactors=FALSE)[[2]]

result2 <- data.frame(matrix(unlist(means_subject), nrow=length(means_subject), byrow=T))
names(result2) <- names(merged)[1:79]
result2 <- cbind(result2, subject=rownames(result2))
result2$activity <- NA

result <- rbind(result1, result2)

write.table(result, "result.txt", row.names=FALSE)
