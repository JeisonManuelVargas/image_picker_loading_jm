extension StringExtension on String {
  bool get isNetworkImage {
    String p = r'^(http|https).*$';
    RegExp regExp = RegExp(p);
    bool isNetWork = regExp.hasMatch(this);
    return isNetWork;
  }
}
