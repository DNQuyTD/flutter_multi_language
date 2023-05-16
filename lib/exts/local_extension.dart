import 'dart:ui';

extension StringX on String {
  Locale toLocale() {
    final List<String> codes = split('_'); // [language, script, country]
    assert(codes.isNotEmpty && codes.length < 4);
    return Locale(codes[0], codes[1]);
  }
}
