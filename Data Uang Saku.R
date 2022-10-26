library(readxl)
data <- read_excel("ini.xlsx")
View(ini)

# MEAN
Max = 50000
Min = 1000
p = (sum((Max - Min) / length(data$xi)))
Mean = data[4,2] + (p * ((sum(data$fi * data$Ci)) / (sum(data$fi))))
print(Mean)

# MEDIAN
b = 16000 - 500
Median = b + (p * (((sum(data$fi) / 2) - (sum(data[1,3] + data[2,3] + data[3,3])))) / data[4,3])
print(Median)

# MODUS
Modus = b + (p * ((data[4,3] - data[3,3]) / ((data[4,3] - data[3,3]) + (data[4,3] - data[5,3]))))
print(Modus)

# RANGE
Akhir = (46000 + 50000) / 2
Pertama = (1000 + 5000) / 2
Range = Akhir - Pertama
print(Range)

# SIMPANGAN RATA-RATA
Total = 2007400
SR = Total / (sum(data$fi))
print(SR)

# SIMPANGAN BAKU
Hasil = 2178100000
Varian = (1 / (sum(data$fi))) * Hasil
SB = sqrt(Varian)
print(SB)