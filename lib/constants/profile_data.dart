// lib/constants/profile_data.dart
// Complete Profile Data for Moe Kyaw Aung - Android Senior Developer

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
  
  static const String yearsDisplay = "8+";
  static const String appsDisplay = "15+";
  static const String usersDisplay = "200K+";
  static const String clientsDisplay = "10+";
  static const String reposDisplay = "1,222";
  static const String satisfactionDisplay = "100%";
  
  static const String instagramUrl = "https://instagram.com/moekyawaung";
  static const String telegramUrl = "https://telegram.me/moekyawaung";
  static const String linkedinUrl = "https://linkedin.com/in/moekyawaung";
  static const String playStoreUrl = "https://play.google.com/store/apps/author/moekyawaung";
  
  static const List<String> heroRoles = [
    "Android Developer | Kotlin | Jetpack Compose | MVVM | Clean Architecture",
    "Android Engineer | Kotlin, Coroutines, Room, Retrofit, Dagger/Hilt",
    "Android Developer | Jetpack Compose, Material 3, Firebase, CI/CD",
    "Android Developer | Native Android, Modular Architecture, Performance Optimization",
    "Android Engineer | Kotlin Multiplatform (KMM) | Android | Backend Integration",
  ];
  
  static const List<Map<String, Object>> skills = [
    {"name": "Kotlin", "percentage": 98, "color": "neonCyan"},
    {"name": "Jetpack Compose", "percentage": 95, "color": "hotPink"},
    {"name": "MVVM Pattern", "percentage": 96, "color": "electricYellow"},
    {"name": "Clean Architecture", "percentage": 94, "color": "neonCyan"},
    {"name": "Firebase", "percentage": 92, "color": "hotPink"},
    {"name": "CI/CD (GitHub Actions)", "percentage": 90, "color": "electricYellow"},
    {"name": "Room Database", "percentage": 93, "color": "neonCyan"},
    {"name": "Retrofit", "percentage": 91, "color": "hotPink"},
    {"name": "Kotlin Multiplatform", "percentage": 85, "color": "electricYellow"},
    {"name": "Material 3", "percentage": 88, "color": "neonCyan"},
  ];
  
  static const List<Map<String, Object>> projects = [
    {"name": "Social Dashboard", "icon": "📱", "tags": ["Kotlin", "Compose", "Firebase"], "color": "neonCyan"},
    {"name": "PWA App", "icon": "📱", "tags": ["Flutter", "Dart", "Web"], "color": "hotPink"},
    {"name": "Admin Dashboard", "icon": "📊", "tags": ["Kotlin", "MVVM", "Room"], "color": "electricYellow"},
    {"name": "Stock Market", "icon": "📈", "tags": ["Retrofit", "WebSocket"], "color": "neonCyan"},
    {"name": "Game Collection", "icon": "🎮", "tags": ["Unity", "Kotlin"], "color": "hotPink"},
    {"name": "Music Player", "icon": "🎵", "tags": ["Compose", "MediaStore"], "color": "electricYellow"},
    {"name": "Chat App", "icon": "💬", "tags": ["Firebase", "WebSocket"], "color": "neonCyan"},
    {"name": "World Cup", "icon": "⚽", "tags": ["API", "Kotlin"], "color": "hotPink"},
    {"name": "E-commerce", "icon": "🛒", "tags": ["Room", "Retrofit"], "color": "electricYellow"},
    {"name": "Portfolio", "icon": "💼", "tags": ["Flutter", "Web"], "color": "neonCyan"},
    {"name": "Money Tracker", "icon": "💰", "tags": ["Compose", "Room"], "color": "hotPink"},
    {"name": "Weather", "icon": "🌤️", "tags": ["REST API"], "color": "electricYellow"},
    {"name": "Crypto", "icon": "💸", "tags": ["WebSocket", "KMM"], "color": "neonCyan"},
    {"name": "Todo", "icon": "📝", "tags": ["Compose", "MVVM"], "color": "hotPink"},
    {"name": "Video Player", "icon": "🎯", "tags": ["ExoPlayer"], "color": "electricYellow"},
  ];
  
  static const List<Map<String, String>> certificates = [
    {"title": "Android Developer Certification", "issuer": "Google", "year": "2023", "hash": "moekyawaung2026_android_dev"},
    {"title": "Firebase Certified Developer", "issuer": "Google", "year": "2022", "hash": "moekyawaung2026_firebase"},
    {"title": "Kotlin Advanced Programming", "issuer": "JetBrains", "year": "2021", "hash": "moekyawaung2026_kotlin"},
    {"title": "Clean Architecture Master", "issuer": "Udemy", "year": "2020", "hash": "moekyawaung2026_architecture"},
    {"title": "Jetpack Compose Expert", "issuer": "Google", "year": "2024", "hash": "moekyawaung2026_compose"},
    {"title": "CI/CD Pipeline Specialist", "issuer": "GitHub", "year": "2023", "hash": "moekyawaung2026_cicd"},
  ];
  
  static String getCertificateUrl(String hash) => "https://gravatar.com/${hash}/certificate.png";
  
  static const Map<String, String> burmeseTranslations = {
    "about": "အကြောင်း", "skills": "စွမ်းအင်", "services": "ဝန်ဆောင်မှု",
    "projects": "ပရိုဂျက်", "certificates": "အချက်အချ", "contact": "အဆက်အစပ်",
    "submit": "ပေးဆောင်", "name_required": "နာမည် အဆင်တန်း ပေးပါ",
    "email_required": "အီးမေးလ် အဆင်တန်း ပေးပါ", "email_invalid": "အီးမေးလ် ပုံစံ မမှန်ပါ",
  };
  
  static const String copyright = "2024 Moe Kyaw Aung. All rights reserved.";
}
