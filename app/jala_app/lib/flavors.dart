enum Flavor {
  prod,
  dev,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.prod:
        return 'Jala App';
      case Flavor.dev:
        return 'Jala App Dev';
      default:
        return 'title';
    }
  }

  static String get api {
    switch (appFlavor) {
      case Flavor.prod:
        return 'https://app.jala.tech/api';
      case Flavor.dev:
        return 'https://app.jala.tech/api';
      default:
        return 'https://app.jala.tech/api';
    }
  }
}
