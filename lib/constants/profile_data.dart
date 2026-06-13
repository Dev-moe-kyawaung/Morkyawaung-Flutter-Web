// lib/constants/profile_data.dart
// Complete Profile Data for Moe Kyaw Aung

class ProfileData {
  static const String name = "Moe Kyaw Aung";
  static const String shortName = "MK";
  static const String title = "Android Senior Developer";
  static const String subtitle = "Kotlin & Jetpack Compose Expert";
  static const String experience = "8+ years";
  static const String location = "Tachileik, Myanmar";
  static const String email = "moekyawaung.mka2030@gmail.com";
  static const String githubUrl = "https://github.com/moekyawaung13721";
  static const String gravatarUrl = "https://gravatar.com/moekyawaung2026";
  static const String avatarUrl = "https://gravatar.com/moekyawaung2026/avatar.png";
  
  // Stats
  static const String yearsDisplay = "8+";
  static const String appsDisplay = "15+";
  static const String usersDisplay = "200K+";
  static const String clientsDisplay = "10+";
  static const String reposDisplay = "1,222";
  static const String satisfactionDisplay = "100%";
  
  // Social Links
  static const String instagramUrl = "https://instagram.com/moekyawaung";
  static const String telegramUrl = "https://telegram.me/moekyawaung";
  static const String linkedinUrl = "https://linkedin.com/in/moekyawaung";
  static const String playStoreUrl = "https://play.google.com/store/apps/author/moekyawaung";
  
  // 15 Projects
  static const List<Map<String, Object>> projects = [
    {"name": "Social Dashboard", "icon": "📱", "tags": ["Kotlin", "Compose", "Firebase"]},
    {"name": "PWA App", "icon": "📱", "tags": ["Flutter", "Dart", "Web"]},
    {"name": "Admin Dashboard", "icon": "📊", "tags": ["Kotlin", "MVVM", "Room"]},
    {"name": "Stock Market", "icon": "📈", "tags": ["Retrofit", "WebSocket"]},
    {"name": "Game Collection", "icon": "🎮", "tags": ["Unity", "Kotlin"]},
    {"name": "Music Player", "icon": "🎵", "tags": ["Compose", "MediaStore"]},
    {"name": "Chat App", "icon": "💬", "tags": ["Firebase", "WebSocket"]},
    {"name": "World Cup", "icon": "⚽", "tags": ["API", "Kotlin"]},
    {"name": "E-commerce", "icon": "🛒", "tags": ["Room", "Retrofit"]},
    {"name": "Portfolio", "icon": "💼", "tags": ["Flutter", "Web"]},
    {"name": "Money Tracker", "icon": "💰", "tags": ["Compose", "Room"]},
    {"name": "Weather", "icon": "🌤️", "tags": ["REST API"]},
    {"name": "Crypto", "icon": "💸", "tags": ["WebSocket", "KMM"]},
    {"name": "Todo", "icon": "📝", "tags": ["Compose", "MVVM"]},
    {"name": "Video Player", "icon": "🎯", "tags": ["ExoPlayer"]},
  ];
  
  // 6 Certificates with Gravatar moekyawaung2026
  static const List<Map<String, String>> certificates = [
    {"title": "Android Developer Certification", "issuer": "Google", "year": "2023", "hash": "moekyawaung2026_android_dev"},
    {"title": "Firebase Certified Developer", "issuer": "Google", "year": "2022", "hash": "moekyawaung2026_firebase"},
    {"title": "Kotlin Advanced Programming", "issuer": "JetBrains", "year": "2021", "hash": "moekyawaung2026_kotlin"},
    {"title": "Clean Architecture Master", "issuer": "Udemy", "year": "2020", "hash": "moekyawaung2026_architecture"},
    {"title": "Jetpack Compose Expert", "issuer": "Google", "year": "2024", "hash": "moekyawaung2026_compose"},
    {"title": "CI/CD Pipeline Specialist", "issuer": "GitHub", "year": "2023", "hash": "moekyawaung2026_cicd"},
  ];
  
  static String getCertificateUrl(String hash) => "https://gravatar.com/${hash}/certificate.png";
}
