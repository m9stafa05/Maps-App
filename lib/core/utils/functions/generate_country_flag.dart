/// Generate a flag emoji from a country code ex: "🇪🇬/eg",
String generateFlag(String countryCode) {
  String flag = countryCode.toUpperCase().replaceAllMapped(
    RegExp(r'[A-Z]'),
    (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397),
  );
  return flag;
}
