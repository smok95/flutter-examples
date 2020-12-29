import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

import 'util.dart';

class Downloader {
  final _httpClient = HttpClient();
  final BytesReceivedCallback onBytesReceived;

  Downloader({this.onBytesReceived});

  Future<File> download(String url) async {
    final uri = Uri.parse(url);
    if (uri == null) return null;

    var request = await _httpClient.getUrl(uri);
    var response = await request.close();
    var bytes = await consolidateHttpClientResponseBytes(response,
        onBytesReceived: onBytesReceived);
    String dir = (await getDownloadsDirectory()).path;
    final filename = Util.getFilenameFromUri(uri);
    File file = new File('$dir/$filename');
    await file.writeAsBytes(bytes);
    return file;
  }
}
