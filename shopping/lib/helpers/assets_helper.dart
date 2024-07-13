class AssetsHelper {
  static final AssetsHelper _singleton = AssetsHelper._internal();
  factory AssetsHelper() => _singleton;
  AssetsHelper._internal();

  static const String spashImage = "assets/splashscreen.png";
}
