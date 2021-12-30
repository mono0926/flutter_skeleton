extension StringEx on String {
  String get capitalized => '${this[0].toUpperCase()}${substring(1)}';
}
