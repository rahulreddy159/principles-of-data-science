#reading csv files
raw_data <- read.csv("data_raw/raw_data1.csv")

#cleaning the data, and removing any empty data
clean_data <- na.omit(raw_data)

#writing clean data into new csv file
write.csv(clean_data, "data_clean/clean_data.csv")

#data testing using t-test
ttest_data1 <- t.test(clean_data$Height..Inches.,clean_data$Weight..Pounds., paired = TRUE)
ttest_data2 <- t.test(clean_data$Age,clean_data$Grip.strength, paired = TRUE)

#capturing the t_test outputs
capture.output(ttest_data1, file = "results/output1.txt")
capture.output(ttest_data2, file = "results/output2.txt")

#data visualization
plot(clean_data$Age, clean_data$Height..Inches., xlab ="Age", ylab ="Height", main = "Age vs Height", col= "blue" )
