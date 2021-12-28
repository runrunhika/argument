import 'package:flutter/material.dart';

import 'next.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = 'ボタン';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Argument Tutorial')
      ),
      body: Center(
        child: RaisedButton(
          child: Text(text),
          onPressed: () async {
            final result = await Navigator.push(
              context,
                MaterialPageRoute(builder: (context) => NextPage('Argument(引数)'),
                  fullscreenDialog: true,
              )
            );
            text = result;
            print(result);
          },
        ),
      ),
    );
  }
}
