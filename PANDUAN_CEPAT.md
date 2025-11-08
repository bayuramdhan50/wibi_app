# PANDUAN CEPAT - WIBI APP

## 🎯 Yang Harus Dilakukan Sebelum Menjalankan:

### 1. UPDATE INFORMASI PRIBADI ANDA ⚠️

Buka file: `lib/utils/constants.dart`

Cari bagian ini dan ganti dengan data Anda:

```dart
// App Info - GANTI DENGAN DATA ANDA
static const String appTitle = 'WIBI APP';
static const String studentName = 'Nama Anda';        // ← GANTI INI
static const String studentNIM = '123456789';         // ← GANTI INI
static const String profileImagePath = 'assets/images/profile.png';
```

### 2. TAMBAHKAN FOTO PROFILE

Simpan foto Anda di folder: `assets/images/`

Nama file harus: `profile.png` atau `profile.jpg`

📍 Path lengkap: `e:\Bayu\Koding\Joki\Mobile\wibi_app\assets\images\profile.png`

**PENTING:** Jika tidak ada foto, akan muncul icon default (tetap bisa jalan)

### 3. JALANKAN APLIKASI

Buka terminal di folder project dan jalankan:

```bash
flutter pub get
flutter run
```

Atau di VS Code:

- Tekan F5
- Atau klik tombol Run di pojok kanan atas

---

## 📋 Checklist Sebelum Submit Tugas:

- [ ] Sudah update nama di `constants.dart`
- [ ] Sudah update NIM di `constants.dart`
- [ ] Sudah tambah foto profile di `assets/images/profile.png`
- [ ] Aplikasi bisa running tanpa error
- [ ] Semua halaman bisa diakses dari bottom navigation
- [ ] Form biodata bisa diisi (dropdown, radio, calendar berfungsi)
- [ ] Kalkulator bisa melakukan perhitungan
- [ ] Sudah test semua fitur

---

## 🎨 Fitur Aplikasi:

1. **Splash Screen** - Muncul 5 detik dengan foto, nama, dan NIM
2. **Biodata** - Form lengkap dengan dropdown, radio button, calendar
3. **Kontak** - 15 kontak dengan foto, nama, nomor telepon
4. **Kalkulator** - Hitung +, -, ×, ÷, x², √
5. **Cuaca** - Info cuaca dengan prakiraan 5 hari
6. **Berita** - 10 artikel berita dengan detail

---

## ❓ Troubleshooting:

**Q: Error "Unable to load asset: assets/images/profile.png"**
A: Tambahkan foto profile.png di folder assets/images/, atau biarkan (akan muncul icon)

**Q: Error setelah pub get**
A: Coba restart IDE atau jalankan: `flutter clean` lalu `flutter pub get`

**Q: Aplikasi tidak muncul di emulator**
A: Pastikan emulator sudah running, atau hubungkan physical device

**Q: Mau ganti warna tema?**
A: Edit file `lib/utils/constants.dart` bagian Colors

---

## 📞 Struktur File Penting:

```
lib/
├── main.dart              ← Entry point
├── utils/
│   └── constants.dart     ← EDIT: Nama & NIM Anda di sini!
├── models/                ← Data statis (kontak, berita, cuaca)
└── screens/               ← Semua halaman aplikasi

assets/
└── images/
    └── profile.png        ← TAMBAHKAN foto Anda di sini!
```

---

## ✅ Sudah Selesai!

Aplikasi sudah lengkap dengan:

- ✅ Clean code & struktur rapi
- ✅ UI/UX yang estetik
- ✅ Semua fitur berfungsi
- ✅ Error handling
- ✅ Responsive design

**Tinggal:**

1. Update nama & NIM Anda
2. Tambah foto (optional tapi recommended)
3. Run & Test
4. Submit tugas! 🎉

Good luck! 💪
