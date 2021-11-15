enum Flavor {
  LOCAL,
  DEV,
  PROD,
}

class F {
  static Flavor? appFlavor;

  // タイトル
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

  // APIのURL
  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.LOCAL:
        return 'http://10.0.2.2:48080';
      case Flavor.DEV:
        return 'http://10.0.2.2:48080';
      case Flavor.PROD:
        return 'http://10.0.2.2:48080';
      default:
        return 'http://10.0.2.2:48080';
    }
  }

  // S3のURL
  static String get s3Url {
    switch (appFlavor) {
      case Flavor.LOCAL:
        return 'https://www.menu-deliver.com';
      case Flavor.DEV:
        return 'https://www.menu-deliver.com';
      case Flavor.PROD:
        return 'https://www.menu-deliver.com';
      default:
        return 'https://www.menu-deliver.com';
    }
  }

}
