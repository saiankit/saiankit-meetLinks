import 'package:flutter/material.dart';
import 'package:studySaiAnkit/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Sai Ankit Meet Links'),
          centerTitle: true,
        ),
        body: MyHomePage(),
      ),
    );
  }
}
