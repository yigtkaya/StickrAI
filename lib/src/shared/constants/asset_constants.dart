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
  final String cuteCatExample = AssetConstants.toPng("cute_cat_example");
  final String cuteCatExample2 = AssetConstants.toPng("cute_cat_example_2");
  final String cuteCat3 = AssetConstants.toPng("cute_cat_3");
  final String bird = AssetConstants.toPng("bird");
  final String dinazor = AssetConstants.toPng("dinazor");
  final String smiley = AssetConstants.toPng("smiley");
  final String women = AssetConstants.toPng("women");
  final String pikachu = AssetConstants.toPng("pikachu");
  final String onboarding = AssetConstants.toPng("onboarding");
  final String onboarding2 = AssetConstants.toJpeg("onboarding_2");
  final String logo = AssetConstants.toPng("logo");
}
