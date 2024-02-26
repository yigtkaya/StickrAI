class AssetConstants {
  static HTIcons icons = HTIcons();
  static HTImages images = HTImages();
  static String toLotti(String name) => 'assets/lottie/$name.json';
  static String toJpg(String name) => 'assets/image/$name.jpg';
  static String toJpeg(String name) => 'assets/image/$name.jpeg';
  static String toPng(String name) => 'assets/image/$name.png';
  static String toIcon(String name) => 'assets/icon/ic_$name.svg';
  static String toJson(String name) => 'assets/mock/$name.json';
}

class HTIcons {
  final String lokalExperienceLogo = AssetConstants.toIcon("lokal_experience");
  final String chevronLeft = AssetConstants.toIcon("chevron_left");
}

class HTImages {
  final String touristGuide = AssetConstants.toJpg("tour_guide");
}
