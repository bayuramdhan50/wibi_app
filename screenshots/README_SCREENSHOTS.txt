====================================================================
        CARA MENGAMBIL SCREENSHOT APLIKASI UNTUK README
====================================================================

PENTING! 
Untuk melengkapi README.md, Anda perlu mengambil screenshot dari
setiap halaman aplikasi dan menyimpannya di folder ini.

--------------------------------------------------------------------
LANGKAH-LANGKAH:
--------------------------------------------------------------------

1. JALANKAN APLIKASI
   - Buka terminal: flutter run
   - Atau tekan F5 di VS Code
   - Tunggu sampai aplikasi muncul di emulator/device

2. AMBIL SCREENSHOT SETIAP HALAMAN

   Screenshot yang dibutuhkan (7 file):
   
   📱 splash_screen.png
      - Tunggu aplikasi terbuka
      - Screenshot saat splash screen muncul (5 detik pertama)
      
      
   📱 biodata_screen.png
      - Tap menu Biodata
      - Screenshot halaman form biodata
      
   📱 contact_screen.png
      - Tap menu Kontak
      - Screenshot halaman daftar kontak
      
   📱 calculator_screen.png
      - Tap menu Kalkulator
      - Screenshot halaman kalkulator
      
   📱 weather_screen.png
      - Tap menu Cuaca
      - Screenshot halaman cuaca
      
   📱 news_screen.png
      - Tap menu Berita
      - Screenshot halaman berita

3. CARA SCREENSHOT DI EMULATOR/DEVICE

   A. ANDROID EMULATOR:
      - Klik icon camera di sidebar emulator
      - Atau tekan Ctrl + S
      - Save di folder screenshots dengan nama yang sesuai
   
   B. PHYSICAL DEVICE ANDROID:
      - Tekan tombol Power + Volume Down bersamaan
      - Transfer file ke PC
      - Rename dan pindahkan ke folder screenshots
   
   C. iOS SIMULATOR:
      - Tekan Cmd + S (Mac)
      - Save dengan nama yang sesuai
   
   D. DARI FLUTTER DEVTOOLS:
      - Buka DevTools
      - Tab "Inspector" > klik icon camera
      - Save screenshot

4. SIMPAN FILE DI FOLDER INI

   Struktur folder harus seperti ini:
   
   screenshots/
   ├── splash_screen.png
   ├── dashboard.png
   ├── biodata_screen.png
   ├── contact_screen.png
   ├── calculator_screen.png
   ├── weather_screen.png
   └── news_screen.png

5. UKURAN & FORMAT YANG DIREKOMENDASIKAN

   - Format: PNG (recommended) atau JPG
   - Ukuran: Maksimal 2MB per file
   - Resolusi: 1080x2400 atau sesuai device
   - Portrait orientation
   - Screenshot full screen (include status bar)

--------------------------------------------------------------------
TIPS:
--------------------------------------------------------------------

✓ Pastikan tidak ada data sensitif yang terlihat
✓ Screenshot dalam kondisi terang (avoid dark mode jika tidak perlu)
✓ Pastikan semua element UI terlihat jelas
✓ Tidak ada overlay atau notifikasi yang menghalangi
✓ Foto profile sudah terpasang sebelum screenshot
✓ Nama dan NIM sudah diupdate

--------------------------------------------------------------------
ALTERNATIVE: SCREENSHOT OTOMATIS
--------------------------------------------------------------------

Jika ingin screenshot otomatis, bisa gunakan integration test:

1. Buat file: test/screenshots_test.dart
2. Gunakan package: flutter_driver atau integration_test
3. Implementasi auto screenshot untuk semua screen
4. Run: flutter test test/screenshots_test.dart

--------------------------------------------------------------------
SETELAH SCREENSHOT SELESAI:
--------------------------------------------------------------------

1. Pastikan semua 7 file ada di folder screenshots/
2. Check ukuran file (tidak terlalu besar)
3. Buka README.md - gambar sudah ter-link otomatis
4. Git add & commit semua file:
   
   git add screenshots/
   git add README.md
   git commit -m "Add screenshots"
   git push

--------------------------------------------------------------------

CATATAN:
File ini hanya sebagai panduan. Setelah screenshot selesai,
file ini bisa dihapus atau dibiarkan sebagai dokumentasi.

====================================================================
