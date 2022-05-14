class NumberUtils {
  static String formatNumberToFourPlaces(int id) {
    String finalNumber;
    int length = id.toString().length;

    if (length == 1) {
      finalNumber = "00${id.toString()}";
    } else if (length == 2) {
      finalNumber = "0${id.toString()}";
    } else {
      finalNumber = id.toString();
    }
    return finalNumber;
  }
}
