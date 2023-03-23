extension StringExtension on String {
  bool get isNetworkImage {
    String p = r'^(http|https).*\.(jpg|jpeg|png)$';
    RegExp regExp = RegExp(p);
    bool isNetWork = regExp.hasMatch(this);
    return isNetWork;
  }
}
