enum Flavor {
  LOCAL,
  DEV,
  PROD,
}

class F {
  static Flavor? appFlavor;

  static String get title {
    switch (appFlavor) {
      case Flavor.LOCAL:
        return 'アプリ名（local）';
      case Flavor.DEV:
        return 'アプリ名（dev）';
      case Flavor.PROD:
        return 'アプリ名';
      default:
        return 'title';
    }
  }

}
