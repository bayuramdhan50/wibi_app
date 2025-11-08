# WIBI APP - Aplikasi Mobile Flutter

## 📱 Deskripsi Aplikasi

Aplikasi mobile Flutter yang lengkap dengan 5 halaman utama yang diakses melalui Bottom Navigation Bar.

## ✨ Fitur Aplikasi

### 1. Splash Screen (5 detik)

- Menampilkan judul aplikasi: "WIBI APP"
- Foto profile Anda
- NIM Anda
- Nama lengkap Anda
- Animasi loading yang menarik
- Otomatis redirect ke Dashboard setelah 5 detik

### 2. Dashboard dengan Bottom Navigation

- Bottom Navigation Bar dengan 5 menu:
  - 📋 Biodata
  - 📞 Kontak
  - 🔢 Kalkulator
  - 🌤️ Cuaca
  - 📰 Berita
- Smooth transition antar halaman
- Icon yang estetik dan modern

### 3. Halaman Biodata

- Form lengkap dengan validasi
- Input fields:
  - Nama Lengkap (TextField)
  - Email (TextField)
  - Nomor Telepon (TextField)
  - Jenis Kelamin (Radio Button)
  - Tanggal Lahir (Date Picker/Calendar)
  - Pendidikan Terakhir (Dropdown)
  - Alamat (TextArea)
- Foto profile di header
- Design yang clean dan modern
- Data tidak disimpan ke database (sesuai requirement)

### 4. Halaman Kontak

- Daftar 15 kontak dengan data statis
- Setiap kontak menampilkan:
  - Circle avatar/foto
  - Nama kontak
  - Nomor telepon
  - Role/jabatan
  - Tombol aksi (call & message)
- Search bar untuk mencari kontak
- Floating Action Button untuk tambah kontak
- Card design yang modern

### 5. Halaman Kalkulator

- Kalkulator sederhana namun lengkap
- Operasi matematika:
  - Penjumlahan (+)
  - Pengurangan (-)
  - Perkalian (×)
  - Pembagian (÷)
  - Kuadrat (x²)
  - Akar Kuadrat (√)
- Tombol Clear (C)
- Tombol Hapus/Backspace (⌫)
- Display yang besar dan mudah dibaca
- Button design dengan color coding

### 6. Halaman Cuaca

- Data cuaca statis namun realistis
- Informasi yang ditampilkan:
  - Suhu saat ini
  - Kondisi cuaca dengan emoji icon
  - Kelembapan
  - Kecepatan angin
  - Deskripsi cuaca
- Prakiraan cuaca 5 hari ke depan
- Design gradient yang menarik
- Animasi icon cuaca

### 7. Halaman Berita

- Daftar 10 artikel berita dengan data statis
- Setiap berita menampilkan:
  - Gambar artikel
  - Kategori berita
  - Judul
  - Deskripsi singkat
  - Tanggal publikasi
  - Author/penulis
- Detail berita dalam Bottom Sheet
- Card design yang menarik
- Infinite scroll

## 🎨 Desain & UI/UX

- **Color Scheme:**
  - Primary: Purple (#6C63FF)
  - Secondary: Green (#4CAF50)
  - Accent: Red (#FF6B6B)
  - Background: Light Gray (#F5F7FA)
- **Typography:**

  - Menggunakan Google Fonts (Poppins)
  - Hierarki text yang jelas
  - Readable dan modern

- **Layout:**
  - Material Design 3
  - Rounded corners
  - Shadow effects
  - Gradient backgrounds
  - Responsive design

## 📁 Struktur Folder

```
lib/
├── main.dart                 # Entry point aplikasi
├── models/                   # Data models
│   ├── contact.dart         # Model & data kontak
│   ├── news.dart            # Model & data berita
│   └── weather.dart         # Model & data cuaca
├── screens/                  # Semua halaman aplikasi
│   ├── splash_screen.dart   # Splash screen
│   ├── dashboard_screen.dart # Dashboard dengan bottom nav
│   ├── biodata_screen.dart  # Halaman biodata
│   ├── contact_screen.dart  # Halaman kontak
│   ├── calculator_screen.dart # Halaman kalkulator
│   ├── weather_screen.dart  # Halaman cuaca
│   └── news_screen.dart     # Halaman berita
├── utils/                    # Utilities
│   └── constants.dart       # Konstanta & konfigurasi
└── widgets/                  # Reusable widgets (future use)

assets/
├── images/                   # Folder untuk gambar
│   ├── profile.png          # Foto Anda
│   ├── contact_*.png        # Foto kontak (1-15)
│   ├── news_*.png           # Gambar berita (1-10)
│   └── README.txt           # Instruksi gambar
└── icons/                    # Folder untuk icons
```

## 🚀 Cara Menjalankan

### Prasyarat

- Flutter SDK terinstall
- Android Studio / VS Code dengan Flutter extension
- Device emulator atau physical device

### Langkah-langkah:

1. **Clone atau buka project:**

   ```bash
   cd e:\Bayu\Koding\Joki\Mobile\wibi_app
   ```

2. **Install dependencies:**

   ```bash
   flutter pub get
   ```

3. **Update informasi pribadi Anda:**

   Buka file `lib/utils/constants.dart` dan update:

   ```dart
   static const String appTitle = 'WIBI APP';          // Judul app Anda
   static const String studentName = 'Nama Anda';      // Ganti dengan nama Anda
   static const String studentNIM = '123456789';       // Ganti dengan NIM Anda
   ```

4. **Tambahkan foto profile:**

   - Simpan foto Anda di: `assets/images/profile.png`
   - Atau foto format .jpg: `assets/images/profile.jpg`
   - Jika tidak ada foto, aplikasi akan menampilkan icon default

5. **(Optional) Tambahkan gambar lainnya:**

   - Foto kontak: `assets/images/contact_1.png` sampai `contact_15.png`
   - Gambar berita: `assets/images/news_1.png` sampai `news_10.png`
   - Jika tidak ada, akan menggunakan placeholder

6. **Jalankan aplikasi:**
   ```bash
   flutter run
   ```

## 🔧 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  google_fonts: ^6.2.1 # Untuk custom fonts
  intl: ^0.19.0 # Untuk format tanggal
```

## 📝 Catatan Penting

1. **Data Statis:**

   - Semua data (kontak, berita, cuaca) bersifat statis
   - Tidak ada koneksi database atau API
   - Cocok untuk demonstrasi dan testing

2. **Personalisasi:**

   - Jangan lupa update nama dan NIM Anda di `constants.dart`
   - Tambahkan foto profile Anda untuk hasil terbaik

3. **Foto/Gambar:**

   - Aplikasi tetap berjalan tanpa gambar (menggunakan placeholder)
   - Untuk hasil optimal, tambahkan semua gambar yang diperlukan

4. **Kode Bersih:**
   - Semua kode terorganisir dalam folder yang rapi
   - Menggunakan naming convention yang konsisten
   - Comments di bagian penting
   - Mudah untuk di-maintain

## 🎯 Fitur yang Sudah Diimplementasikan

✅ Splash Screen 5 detik dengan info pribadi
✅ Dashboard dengan Bottom Navigation Bar
✅ Halaman Biodata dengan form lengkap (dropdown, radio, calendar)
✅ Halaman Kontak dengan 15 kontak statis
✅ Halaman Kalkulator fungsional (tambah, kurang, kali, bagi, kuadrat, akar)
✅ Halaman Cuaca dengan data statis yang menarik
✅ Halaman Berita dengan 10 berita statis
✅ Design estetik dan modern
✅ Code structure yang rapi dan clean
✅ Error handling (placeholder untuk gambar yang tidak ada)

## 🎨 Customization

Anda bisa mengubah warna tema aplikasi di `lib/utils/constants.dart`:

```dart
static const Color primaryColor = Color(0xFF6C63FF);    // Warna utama
static const Color secondaryColor = Color(0xFF4CAF50);  // Warna sekunder
static const Color accentColor = Color(0xFFFF6B6B);     // Warna aksen
```

## 📱 Screenshot

(Tambahkan screenshot aplikasi Anda di sini setelah menjalankan)

## 👨‍💻 Developer

- **Nama:** [Nama Anda]
- **NIM:** [NIM Anda]
- **Project:** WIBI APP - Mobile Application

## 📄 License

Project ini dibuat untuk keperluan tugas kuliah.

---

**Selamat Menggunakan! 🎉**

Jika ada pertanyaan atau kendala, silakan hubungi developer.
