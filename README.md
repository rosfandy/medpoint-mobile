# Medpoint System - Frontend (Mobile)

## Introduction

**Medpoint System** adalah sebuah platform yang memungkinkan pengguna untuk melakukan berbagai jenis reservasi medis online, termasuk konsultasi dokter, tes laboratorium, tindakan medis, dan vaksinasi. Sistem ini memudahkan pengguna dengan proses reservasi yang lebih efisien sehingga tidak perlu melakukan pendaftaran ulang secara offline saat menjalani tindakan medis.

### Fitur Utama

- **Reservasi Medis Online:** Pengguna dapat melakukan reservasi untuk konsultasi dokter, tes laboratorium, tindakan medis, dan vaksinasi.
- **Pencarian Dokter dan Fasilitas Kesehatan:** Memudahkan pengguna untuk menemukan dokter dan fasilitas kesehatan terdekat.
- **Penjadwalan Janji Temu:** Pengguna dapat menjadwalkan janji temu dengan dokter atau tindakan medis.

## Deskripsi Sistem (Mobile)

**Frontend mobile** dari **Medpoint System** dikembangkan menggunakan bahasa pemrograman **Dart** dan framework **Flutter**. Aplikasi mobile ini memungkinkan pengguna untuk melakukan reservasi medis, mengelola profil pribadi, melakukan pembayaran, notifikasi dan pencarian dokter. Aplikasi ini dirancang untuk memudahkan pengguna dalam mengakses layanan kesehatan secara efisien dan efektif.

## Teknologi yang Digunakan

- **Bahasa Pemrograman:** Dart
- **Framework:** Flutter
- **Database:** PostgreSql + Supabase

## Dokumentasi Flutter

Untuk informasi lebih lanjut tentang framework Flutter, dapat mengunjungi [Dokumentasi Flutter](https://flutter.dev).

## Folder Structure

```javascript
├── assets                        # Folder contain assets
│   ├── images
│   └── ...
│
└── lib                           # Main folder
    ├── common
    │   ├── style
    │   └── widget
    │
    ├── features                  # Folders contain application features
    │   ├── auth                  # Example feature for auth
    │   │   ├── controllers
    │   │   ├── models
    │   │   └── screens
    │   └── ...
    │
    ├── data                      # Folders contain data management
    │   ├── repositories          # Folders contain data store
    │   └── services              # Services for interaction with APIs or databases
    │
    ├── utils
    │
    ├── main.dart
    └── ...
```
