#Instalasi Package untuk Kepentingan Clustering
library(dplyr) #Manipulasi data
library(tidyverse) #Manipulasi data
library(cluster) #Algoritma clustering
library(factoextra) #Algoritma clustering dan visualisasi

#Memanggil Data untuk Proses Clustering
*Download dataset: https://www.kaggle.com/arawind/retail-marketing
retailMarketingDI <- read.csv("C:/Users/User/Desktop/retailMarketingDI.csv") #import dataset
str(retailMarketingDI) #melihat struktur data clustering 
head(retailMarketingDI) #untuk melihat data-data pada urutan terdepan/awal

#Keterangan:
#Pada kolom Age, 0='Young', 1='Middle', 2='Old'
#Pada kolom Gender, 0='Female', 1='Male'
#Pada kolom OwnHome, 0='Own', 1='Rent'
#Pada kolom Married, 0='Married', 1='Single'
#Pada kolom Location, 0='Close', 1='Far'

#Pre-Processing Data
dataclustering <- retailMarketingDI[-8] #menghapus kolom history karena sangat banyak missing data
datafix <- na.omit(dataclustering) #melakukan penghapusan missing data

#Penentuan Jumlah Cluster
fviz_nbclust(datafix, kmeans, method = "wss") #metode elbow

fviz_nbclust(datafix, kmeans, method = "silhouette") #metode silhouette

set.seed(123)
gap_stat <- clusGap(datafix, FUN = kmeans, nstart = 25,
                    K.max = 10, B = 50)
fviz_gap_stat(gap_stat) #metode gap statistic


#Mengelompokkan Data-Data ke Dalam Cluster
final <- kmeans(datafix, 4, nstart = 25) #mengelompokkan data-data yang ada ke dalam cluster
print(final) #menampilkan data-data yang telah dimasukkan ke dalam cluster

#Visualisasi Hasil Clustering
fviz_cluster(final, data = datafix) #visualisasi clustering

#Pembentukan Profil Hasil Clustering
datafix %>%
  mutate(Cluster = final$cluster) %>%
  group_by(Cluster) %>%
  summarise_all("mean") #membentuk profil untuk setiap cluster yang terbentuk

