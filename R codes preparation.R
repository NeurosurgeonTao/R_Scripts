#横向合并
ID = c(1:4)
Name = c("Jim", "Tom", "Nancy", "Jack")
Score = c(78, 23, 56, 90)
student1 = data.frame(ID, Name)
student2 = data.frame(ID, Score)
#total_student = merge(student1, student2, by = "ID")
total_student = cbind(student1, student2)

#竖向合并
ID = c(1:4)
Name = c("Jim", "Tom", "Nancy", "Jack")
student1 = data.frame(ID, Name)
ID = c(5:9)
Name = c("James", "Jane", "Ronaldo", "Worker", "Merck")
student2 = data.frame(ID, Name)
total_student_2 = cbind(student1, student2)



#paste
paste(c("X", "Y"), 1:10, sep = "")
# "X1"  "Y2"  "X3"  "Y4"  "X5"  "Y6"  "X7"  "Y8"  "X9"  "Y10"

a = c(1, 2, 3, 4, 5)
names(a) = c('m', 'n', 'o', 'p', 'q')
b = paste(a, names(a), sep = "/")
c = paste(b, collapse = ",")


#竖向合并
library("dplyr")
combination = bind_rows(student1, student2)
combination2 = bind_rows(student1, student2, .id = "ID")
#.id 将新建列并记录其来源data.frame


#不等长合并
install.packages("plyr")
library("plyr")
list1 <- list()
list1[[1]] <- data.frame(t(student1))
list1[[2]] <- data.frame(t(student2))
u <- rbind.fill(list1)
u

#construct a data frame
n = max(length(student1), length(student2))
total = data.frame()
#total = data.frame(student1, student2)
total2 = bind_rows(student1, student2)



test = data.frame(x = 1, y = 1:3)

