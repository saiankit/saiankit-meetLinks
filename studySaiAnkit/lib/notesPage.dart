import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LocalLoader {
  static Future<String> loadLocal() async {
    return await rootBundle.loadString('assets/yourFile.html');
  }
}

class NotesPage extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<String>(
        future: LocalLoader.loadLocal(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              return WebView(
                initialUrl:
                    new Uri.dataFromString(snapshot.data, mimeType: 'text/html')
                        .toString(),
                // maybe you Uri.dataFromString(snapshot.data, mimeType: 'text/html', encoding: Encoding.getByName("UTF-8")).toString()
                javascriptMode: JavascriptMode.unrestricted,
              );
            }
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
