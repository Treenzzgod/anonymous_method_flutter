import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "Gio adalah seseorang yang ganteng azek";

  void tekan() {
    setState(() {
      message = "tombol sudah ditekan";
    });
  }

  void back() {
    setState(() {
      message = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anonymous Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message),
              RaisedButton(child: Text("Tekan Saya"), onPressed: tekan),
              RaisedButton(
                child: Text('Back'),
                onPressed: back,
                color: Colors.amber,
              )
            ],
          ),
        ),
      ),
    );
  }
}
