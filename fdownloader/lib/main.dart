import 'package:fdownloader/downloader.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WebDownloader',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Web Downloader'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Downloader _downloader;
  double _percent = 0.0;

  @override
  void initState() {
    super.initState();

    _downloader = Downloader(
      onBytesReceived: _onBytesReceived,
    );
  }

  void _onBytesReceived(int cumulative, int total) {
    setState(() {
      if (total == null) total = cumulative;
      _percent = cumulative.toDouble() / total.toDouble();
    });
    print('$cumulative / $total');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          if (_percent > 0)
            LinearProgressIndicator(
              value: _percent,
              minHeight: double.infinity,
            ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Card(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 20, right: 20),
                      hintText: '다운로드 받은 파일의 URL을 입력해주세요'),
                  onSubmitted: (value) async {
                    print(value);
                    setState(() {
                      _percent = 0.0;
                    });

                    final file = await _downloader.download(value);
                    print(file.path);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
