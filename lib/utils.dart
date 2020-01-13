class Utils {
  static int stringToInt(String value) {
    if (value == null) return 0;
    try {
      return int.parse(value);
    } catch (_) {
      return 0;
    }
  }
}
