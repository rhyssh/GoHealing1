# GASCUY TEAM
<br>

# GoHealing
![alt text](https://github.com/Raturu0/GoHealing/blob/main/assets/readme/icon.png?raw=true)

GoHealing adalah aplikasi revolusioner yang menghadirkan kemudahan dalam merencanakan 
dan mengatur perjalanan rekreasi pengguna. Beberapa fitur yang dimiliki aplikasi ini adalah :
- Pemesanan tiket rekreasi secara online, GoHealing membuat pengguna mudah dalam mendapatkan 
tempat wisata bahkan dalam genggaman HP. 
- Toko souvenir. Jika pemilik wisata memiliki toko sovenir official, maka akan disediakan juga dalam 
aplikasi ini sehingga pengguna tidak perlu repot-repot dalam mencari souvenir karena sudah disediakan 
langsung disini.
Aplikasi ini memiliki memiliki penyelesaian untuk 3 dari 17 topik SDGs PBB, diantaranya : 
1. Poin ke-8, Decent Work and Economic Growth.
Membantu UMKM masyarakat karena semakin ramai sebuah tempat wisata, maka 
akan membuka banyak lapangan kerja baru untuk masyarakat sekitar juga. Selain itu, dengan adanya aplikasi ini akan membantu banyak tempat-tempat wisata yang belum terlalu dikenal sehingga memberikan kesempatan bagi penyedia wisata untuk mendaftarkan tempat wisatanya ke aplikasi GoHealing, sehingga mereka bisa mempromosikan dan meramaikan tempat wisatanya. 
2. Poin ke-13, Climate Action.
Dengan mengurangi penggunaan kertas, kita dapat mengurangi deforestasi dan dampak 
ekologisnya. Hal ini sejalan dengan upaya mengurangi emisi karbon yang dapat 
menyebabkan perubahan iklim.
3. Poin ke-15, Life on Land
Dengan mengurangi penggunaan kertas pada tiket, inovasi ini nantinya juga bisa untuk 
memitigasi dampak negatif terhadap kehidupan yang ada di darat, seperti mendukung 
pelestarian habitat alami dan mempertahankan keanekaragaman hayati.
Pada akhirnya, pengguna nantinya dapat menikmati pengalaman memesan tiket yang cepat dan 
efisien, serta menjelajahi wisata dengan lebih mudah dan menyenangkan

## Features

- Pemesanan Tiket
- Pemesanan Souvenir Official

## Tech
- [VSCODE](https://www.figma.com/) - Tools utama untuk mengoding tentunya
- [FLUTTER](flutter.io) - Tools merancang aplikasi
- [PackagaDlutter](pub.dev) - Package-package yang mempermudah perancangan aplikasi
- [AndroidStudio](https://developer.android.com/studio) - SDK dan simulator android
- [Figma](https://developer.android.com/studio) - Perancangan UI dan UX
- [Firebase](https://firebase.google.com/) - manajemen dan penyimpanan data real-time

## Persiapan
- ### Android Studio
Download Android Studio dan beberapa SDK yang diperlukan sesuai dengan perangkat Anda. Anda dapat mendownload nya di  [sini](https://developer.android.com/studio). Setelah mendownload, jangan lupa untuk menambah environment ke system path sesuai dengan petunjuk.

- ### Flutter 
Download juga untuk Flutter nya di [sini](https://docs.flutter.dev/get-started/install). Pilih sesuai dengan perangkat Anda dan jangan lupa menambah environment bin ke system path Anda.

## Instalasi
- Fork repository kami atau clone dengan perintah :
```sh
git clone https://github.com/Raturu0/GoHealing.git
```
- Download dan dapatkan dependensi di file pubspec.yaml dengan perintah
```sh
flutter pub get
```
- Pilih device di bagian pojok kanan, lalu pilih sesuai dengan keinginan, bisa real device, chrome, atau simulator Android Studio
- Jalankan aplikasi dengan perintah :
```sh
flutter run
```


# LAYOUT APLIKASI
Berikut kami tampilkan beberapa tampilan dari aplikasi yang kami desain ...
<br>

### Keterangan : Jika terdapat banner DEBUG di pojok kanan atas, berarti itu adalah tampilan dari hasil developer, namun jika tidak ada berarti itu merupakan tampilan dari Figma yang rencananya akan didevelop juga...Berikut kami tampilkan progress yang sudah kami jalankan dan beberapa hal yang akan kami rencanakan kedepan :
<br>

### Login dan Register
![alt text](https://github.com/Raturu0/GoHealing/blob/main/assets/readme/login.jpg?raw=true)
![alt text](https://github.com/Raturu0/GoHealing/blob/main/assets/readme/register.jpg?raw=true)


### Menu utama dari aplikasi :
![alt text](https://github.com/Raturu0/GoHealing/blob/main/assets/readme/beranda.jpg?raw=true)

Memiliki 5 navigasi, diantaranya :
1. Home <br>
2. Souvenir <br>
3. Wisata <br>
4. History <br>
5. Profile
<br>

### Pencarian Souvenir dan Detail Souvenir :
![alt text](https://github.com/Raturu0/GoHealing/blob/main/assets/readme/souvenir.jpg)
![alt text](https://github.com/Raturu0/GoHealing/blob/main/assets/readme/detailsouvenir.jpg)
<br>
Keterangan : Data yang ada di atas sudah terintegrasikan dengan Firebase, berupa nama Souvenir, deskripsi, harga, dan lain-lain. Rencananya data ini dikirim oleh penyedia wisata yang mendaftar pada aplikasi dan dimasukkan ke firebase oleh si Developer.

### Pencarian Wisata dan Detail Wisata :
![alt text](https://github.com/Raturu0/GoHealing/blob/main/assets/readme/wisata.jpg?raw=true)
![alt text](https://github.com/Raturu0/GoHealing/blob/main/assets/readme/detailwisata.jpg?raw=true)
<br>
Keterangan : Data yang ada di atas sudah terintegrasikan dengan Firebase, berupa nama tempat, deskripsi, harga, dan lain-lain. Rencananya data ini dikirim oleh penyedia wisata yang mendaftar pada aplikasi dan dimasukkan ke firebase oleh si Developer.

### History :
![alt text](https://github.com/Raturu0/GoHealing/blob/main/assets/readme/history.jpg?raw=true)
![alt text](https://github.com/Raturu0/GoHealing/blob/main/assets/readme/historynolog.jpg?raw=true)
<br>

### Profile :
![alt text](https://github.com/Raturu0/GoHealing/blob/main/assets/readme/profilenolog.jpg?raw=true)
![alt text](https://github.com/Raturu0/GoHealing/blob/main/assets/readme/profil.jpg?raw=true)
<br>

# FIRESTORE DATABASE 
Berikut kami lampirkan mengenai firestore database yang kami gunakan sekarang ini :
![alt text](https://github.com/Raturu0/GoHealing/blob/main/assets/readme/db.jpeg?raw=true)
<br>
Disini, kami sementara membuat 3 collection, yaitu untuk :
- DB_order
- DB_wisata
- DB_souvenir
<br>
Yang dimana isi dari setiap collection ini nantinya akan diintegrasikan dengan layout pada aplikasi, sehingga aplikasi bisa menampilkan informasi secara fleksibel dan realtime dengan bantuan firestore database ini.


# RENCANA HAL-HAL YANG AKAN DITAMBAHKAN :
- Halaman Bagi Admin/Penyedia wisata (Login, Register, Dashboard, chat, Edit Informasi wisata dan souvenir)
- Chat Pengguna dengan Admin tempat wisata



