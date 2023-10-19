import 'dart:ui';

Color hexToRgb(String hexColor) {
  // Remove any leading '#' character if it's present
  hexColor = hexColor.replaceAll("#", "");

  // Parse the hex color code and convert it to RGB values
  int intValue = int.parse(hexColor, radix: 16);
  int red = (intValue >> 16) & 0xFF;
  int green = (intValue >> 8) & 0xFF;
  int blue = intValue & 0xFF;

  // Create a Color object with the RGB values
  return Color.fromARGB(255, red, green, blue);
}
