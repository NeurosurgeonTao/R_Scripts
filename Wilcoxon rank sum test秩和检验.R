library(tidyverse)
library(dplyr)
library(ggplot2)

summary(Branch_Volume)
boxplot(Branch_Volume)

north_test_Ctrl = shapiro.test(Branch_Volume$Ctrl)
north_test_ATP = shapiro.test(Branch_Volume$ATP)
north_test_JNJ = shapiro.test(Branch_Volume$JNJ)
north_test_Mdivi_1 = shapiro.test(Branch_Volume$Mdivi_1)
#大于0.05则表示符合正态分布


wilcox.test(Branch_Volume$Ctrl, Branch_Volume$ATP, 
            alternative = "less",
            paired = FALSE)
#greater or less可以只写首字母
#greater x > y
wilcox.test(Branch_Volume$JNJ, Branch_Volume$ATP,
            alternative = "g",
            paired = FALSE)

wilcox.test(Branch_Volume$Mdivi_1, Branch_Volume$ATP,
            alternative = "less",
            paired = FALSE)


geom_boxplot(outlier.colour = "black", outlier.shape = 16,
             outlier.size = 2, notch = FALSE)
