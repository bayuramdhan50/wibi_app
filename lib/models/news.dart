class NewsArticle {
  final String title;
  final String description;
  final String imageUrl;
  final String category;
  final String date;
  final String author;

  NewsArticle({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.category,
    required this.date,
    required this.author,
  });
}

// Data statis berita
class NewsData {
  static List<NewsArticle> getNews() {
    return [
      NewsArticle(
        title: 'Teknologi AI Terbaru Mengubah Dunia',
        description:
            'Perkembangan AI yang pesat membawa perubahan besar dalam berbagai industri.',
        imageUrl: 'assets/images/news_1.png',
        category: 'Teknologi',
        date: '8 Nov 2025',
        author: 'Tech Reporter',
      ),
      NewsArticle(
        title: 'Ekonomi Digital Indonesia Terus Berkembang',
        description:
            'Pertumbuhan e-commerce dan startup digital mencapai rekor tertinggi.',
        imageUrl: 'assets/images/news_2.png',
        category: 'Ekonomi',
        date: '7 Nov 2025',
        author: 'Business Analyst',
      ),
      NewsArticle(
        title: 'Tips Kesehatan di Era Modern',
        description: 'Menjaga kesehatan mental dan fisik di tengah kesibukan.',
        imageUrl: 'assets/images/news_3.png',
        category: 'Kesehatan',
        date: '6 Nov 2025',
        author: 'Health Expert',
      ),
      NewsArticle(
        title: 'Inovasi Pendidikan dengan Teknologi',
        description:
            'Platform pembelajaran online semakin populer di kalangan pelajar.',
        imageUrl: 'assets/images/news_4.png',
        category: 'Pendidikan',
        date: '5 Nov 2025',
        author: 'Education Writer',
      ),
      NewsArticle(
        title: 'Olahraga: Kompetisi Regional Dimulai',
        description:
            'Atlet-atlet terbaik berkompetisi untuk meraih medali emas.',
        imageUrl: 'assets/images/news_5.png',
        category: 'Olahraga',
        date: '4 Nov 2025',
        author: 'Sports Journalist',
      ),
      NewsArticle(
        title: 'Wisata Indonesia yang Menakjubkan',
        description: 'Destinasi wisata tersembunyi yang wajib dikunjungi.',
        imageUrl: 'assets/images/news_6.png',
        category: 'Travel',
        date: '3 Nov 2025',
        author: 'Travel Blogger',
      ),
      NewsArticle(
        title: 'Kuliner Nusantara yang Mendunia',
        description:
            'Makanan Indonesia semakin dikenal di kancah internasional.',
        imageUrl: 'assets/images/news_7.png',
        category: 'Kuliner',
        date: '2 Nov 2025',
        author: 'Food Critic',
      ),
      NewsArticle(
        title: 'Seni dan Budaya Lokal Dilestarikan',
        description: 'Upaya generasi muda melestarikan warisan budaya.',
        imageUrl: 'assets/images/news_8.png',
        category: 'Budaya',
        date: '1 Nov 2025',
        author: 'Culture Reporter',
      ),
      NewsArticle(
        title: 'Startup Lokal Raih Pendanaan Besar',
        description:
            'Investor global tertarik dengan inovasi startup Indonesia.',
        imageUrl: 'assets/images/news_9.png',
        category: 'Bisnis',
        date: '31 Okt 2025',
        author: 'Startup Analyst',
      ),
      NewsArticle(
        title: 'Lingkungan: Program Go Green Diperluas',
        description:
            'Kampanye penghijauan dan pengurangan plastik semakin gencar.',
        imageUrl: 'assets/images/news_10.png',
        category: 'Lingkungan',
        date: '30 Okt 2025',
        author: 'Environmental Writer',
      ),
    ];
  }
}
