# WIBI APP - Flutter Mobile Application

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)

Aplikasi mobile Flutter lengkap dengan 7 halaman utama yang mencakup Splash Screen, Biodata, Kontak, Kalkulator, Cuaca, dan Berita.

## 📱 Fitur Utama

### 1. 🚀 Splash Screen

- Durasi 5 detik dengan animasi
- Menampilkan logo aplikasi
- Foto profile mahasiswa
- Nama lengkap dan NIM
- Auto-redirect ke Dashboard

### 2. 🏠 Dashboard

- Bottom Navigation Bar dengan 5 menu
- Smooth transition antar halaman
- Material Design 3
- Responsive layout

### 3. 👤 Halaman Biodata

- Form input lengkap:
  - Text fields (Nama, Email, Phone, Alamat)
  - Radio buttons (Jenis Kelamin)
  - Date picker (Tanggal Lahir)
  - Dropdown (Pendidikan)
- Validasi form
- UI/UX yang menarik

### 4. 📞 Halaman Kontak

- 15 kontak dengan data statis
- Circle avatar untuk setiap kontak
- Informasi lengkap (Nama, No. HP, Role)
- Search functionality
- Action buttons (Call & Message)

### 5. 🧮 Halaman Kalkulator

- Operasi matematika dasar (+, -, ×, ÷)
- Fungsi advanced (x², √)
- Clear & Backspace
- Real-time calculation
- Responsive button layout

### 6. 🌤️ Halaman Cuaca

- Data cuaca statis
- Informasi lengkap (Suhu, Kelembapan, Kecepatan Angin)
- Emoji icon untuk kondisi cuaca
- Prakiraan 5 hari ke depan
- Gradient design

### 7. 📰 Halaman Berita

- 10 artikel berita statis
- Card layout yang menarik
- Detail artikel di Bottom Sheet
- Kategori berita
- Author & timestamp

## 🎨 Desain

- **Material Design 3** dengan custom theme
- **Google Fonts** (Poppins) untuk typography
- **Gradient backgrounds** yang modern
- **Card-based layout** dengan shadows
- **Rounded corners** dan smooth animations
- **Color scheme** yang konsisten dan eye-catching

## 🛠️ Teknologi

- **Flutter SDK** - Framework utama
- **Dart** - Programming language
- **Google Fonts** - Custom typography
- **Intl** - Date formatting

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  google_fonts: ^6.2.1
  intl: ^0.19.0
```

## 🚀 Quick Start

### Prerequisites

- Flutter SDK (3.9.2 atau lebih baru)
- Android Studio / VS Code
- Emulator atau Physical Device

### Installation

1. Clone atau download repository

```bash
cd e:\Bayu\Koding\Joki\Mobile\wibi_app
```

2. Install dependencies

```bash
flutter pub get
```

3. **PENTING:** Update informasi pribadi Anda

   Edit file `lib/utils/constants.dart`:

   ```dart
   static const String studentName = 'Nama Anda';  // Ganti dengan nama Anda
   static const String studentNIM = '123456789';    // Ganti dengan NIM Anda
   ```

4. Tambahkan foto profile (optional)

   Simpan foto di `assets/images/profile.png`

5. Run aplikasi

```bash
flutter run
```

## 📁 Project Structure

```
lib/
├── main.dart                    # Entry point
├── models/                      # Data models
│   ├── contact.dart            # Contact model & data
│   ├── news.dart               # News model & data
│   └── weather.dart            # Weather model & data
├── screens/                     # All app screens
│   ├── splash_screen.dart
│   ├── dashboard_screen.dart
│   ├── biodata_screen.dart
│   ├── contact_screen.dart
│   ├── calculator_screen.dart
│   ├── weather_screen.dart
│   └── news_screen.dart
├── utils/                       # Utilities
│   └── constants.dart          # App constants
└── widgets/                     # Reusable widgets

assets/
├── images/                      # Image assets
│   ├── profile.png             # Your photo
│   └── README.txt              # Image guide
└── icons/                       # Icon assets
```

## 📝 Catatan Penting

1. **Semua data bersifat STATIS** (tidak ada database/API)
2. **Update nama dan NIM** di file constants.dart sebelum run
3. **Foto profile** optional, akan menggunakan placeholder jika tidak ada
4. **Clean code** dengan struktur yang rapi dan mudah di-maintain
5. **Error handling** untuk asset yang tidak ditemukan

## 🎯 Requirements Terpenuhi

✅ a) Splash Screen 5 detik (judul, foto, NIM, nama)  
✅ b) Dashboard dengan Bottom Navigation (5 menu: Biodata, Kontak, Kalkulator, Cuaca, Berita)  
✅ c) Halaman Biodata (form lengkap dengan dropdown, radio, calendar)  
✅ d) Halaman Kontak (15 kontak statis dengan circle image)  
✅ e) Halaman Kalkulator (operasi matematika lengkap)  
✅ f) Halaman Cuaca (data statis dengan animasi)  
✅ g) Halaman Berita (data statis dengan layout berulang)  
✅ Tampilan estetik dan modern  
✅ File terpisah untuk setiap komponen  
✅ Kode bersih dan terstruktur

## 📖 Dokumentasi Lengkap

Untuk panduan lebih detail, lihat:

- [DOKUMENTASI.md](DOKUMENTASI.md) - Dokumentasi lengkap
- [PANDUAN_CEPAT.md](PANDUAN_CEPAT.md) - Quick start guide

## 🐛 Troubleshooting

**Q: Asset tidak ditemukan?**  
A: Pastikan foto ada di folder yang benar atau biarkan (akan muncul placeholder)

**Q: Error setelah pub get?**  
A: Coba `flutter clean` kemudian `flutter pub get` lagi

**Q: Mau ubah warna?**  
A: Edit `lib/utils/constants.dart` bagian Colors

## 👨‍💻 Developer

- **Project:** WIBI APP
- **Type:** Flutter Mobile Application
- **Purpose:** Tugas Kuliah Mobile Programming

## 📄 License

Educational Purpose - Tugas Kuliah

---

**Made with ❤️ using Flutter**

_Update nama dan NIM Anda sebelum menjalankan aplikasi!_
