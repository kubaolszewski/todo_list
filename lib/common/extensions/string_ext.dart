extension StringExt on String {
  String get toNavigation => replaceAll('//', '/');
}
