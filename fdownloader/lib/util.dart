class Util {
  static String getFilenameFromUri(Uri uri) {
    var path = uri.path;
    final idx = path.lastIndexOf('/');
    if (idx != -1) {
      path = path.substring(idx + 1);
    }

    return path;
  }
}
