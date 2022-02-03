import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _controller = TextEditingController();
  String? text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              width: 200,
              height: 100,
              child: TextField(
                controller: _controller,
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  text = _controller.text;
                });
              },
              child: Text('Send')),
          Container(
            decoration: BoxDecoration(border: Border.all(width: 1)),
            width: 200,
            height: 100,
            child: Center(
              child: Text(text ?? ""),
            ),
          ),
        ],
      ),
    );
  }
}
