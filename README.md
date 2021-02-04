# Customer Segmentation for a Retail Company // dengan metode K-Means Clustering pada Software R

Oleh: Dhiya' Rafiq Azka (14417044) dalam rangka membuat case untuk workshop R 2020 yang diselenggarakan oleh Laboratorium Sistem Informasi dan Keputusan (LSIK) ITB

## Latar Belakang Case
+ PT X adalah sebuah perusahaan retail yang saat ini berusaha untuk menjadi salah satu perusahaan retail terbesar di negara Y. Penjualan yang dilakukan oleh PT X cenderung bagus, namun terdapat **tidak efektifnya pengeluaran pada divisi pemasaran**. Didapati bahwa hasil penjualan yang dihasilkan dari usaha pemasaran tidak sebanding.

+ Mengetahui hal tersebut, divisi pemasaran PT X ingin memaksimalkan jumlah penjualannya melalui pembuatan **kampanye-kampanye pemasaran yang personalized**. 

+ Menurut divisi pemasaran PT X, kampanye pemasaran dapat dibuat personalized dengan **melakukan segmentasi konsumen** dari data historis pembeli. 

## Struktur Data
Data diambil dari [Kaggle](https://www.kaggle.com/arawind/retail-marketing). Didapati bahwa terdapat 1000 data konsumen yang terdiri atas 10 variabel pada dataset-nya.

Variabel-variabel pada daset merupakan variabel demografis pembeli dan variabel transaksi pembeli. Variabel demografis demografis berupa umur, jenis kelamin, status, tempat tinggal (jauh atau tidaknya dan mempunyai rumah sendiri atau menyewa), jumlah anak, dan gaji. Variabel transaksional yang digunakan adalah data history, katalog produk yang dibeli, dan jumlah biaya transaksi yang dilakukan.

**Catatan**: Proses segmentasi konsumen tidak dapat langsung digunakan begitu saja karena beberapa jenis data masih bersifat kategorikal. Untuk mempermudah proses segmentasi konsumen, data kategorikal dapat diubah menjadi data numerical, sehingga pengelompokkan konsumen dapat lebih mudah dan cepat dilakukan.

```
Deskripsi variabel

Age: Kategori umur pembeli
Gender: Jenis kelamin pembeli
OwnHome: Kategori kepemilikan rumah pembeli
Married: Status pernikahan pembeli
Location: Kategori jarak tempat tinggal pembeli ke toko retail
Salary: Jumlah gaji pembeli
Children: Jumlah anak yang dimiliki pembeli
History: Kategori jumlah pembelian pembeli di toko di masa lampau 
Catalogs: Katalog yang dibeli oleh pembeli
AmountSpent: Total pembelian yang dilakukan oleh pembeli
```

## Hasil
Hasil dari K-Means Clustering (berdasarkan metode elbow, metode silhouette, dan metode gap statistics) adalah terdapat 4 kelompok konsumen pada toko retail tersebut.

Secara rinci, deskripsi dari keempat kelompok konsumen pada toko retail tersebut adalah:
+ Cluster 1: Pria paruh baya (middle aged) yang telah menikah, mempunyai rumah, mempunyai anak paling banyak, dan gaji paling banyak serta belanja paling besar
+ Cluster 2: Pria dan perempuan paruh baya (middle aged) serta tua yang punya 1 anak / tidak punya anak dengan gaji dan jumlah belanja second lowest dari seluruh cluster yang ada.
+ Cluster 3: Perempuan muda (single) yang tinggalnya masih menyewa dengan gaji paling sedikit tapi juga paling belanja sedikit.
+ Cluster 4: Pria dan perempuan paruh baya (middle aged) yang mempunyai rumah dan sudah menikah dengan gaji dan jumlah belanjar tertinggi kedua (second highest)
