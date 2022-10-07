import 'package:flutter/material.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: const MaterialColor(0xFF129575, {
          50: Color(0x18129575),
          100: Color(0x33129575),
          200: Color(0x4B129575),
          300: Color(0x66129575),
          400: Color(0x7E129575),
          500: Color(0x99129575),
          600: Color(0xB1129575),
          700: Color(0xCC129575),
          800: Color(0xE4129575),
          900: Color(0xFF129575),
        }),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });

    var aqwesdfa = {
      50: Color(0x18129575),
      100: Color(0x33129575),
      200: Color(0x4B129575),
      300: Color(0x66129575),
      400: Color(0x7E129575),
      500: Color(0x99129575),
      600: Color(0xB1129575),
      700: Color(0xCC129575),
      800: Color(0xE4129575),
      900: Color(0xFF129575),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
