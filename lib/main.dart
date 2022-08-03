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
      home: const MyStatefulWidget(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({required this.title, Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
}

// ignore: must_be_immutable
class MyFirstWidget extends StatelessWidget {
  static int buildCounter = 0;

  const MyFirstWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    buildCounter++;
    // ignore: avoid_print
    print('StatelessWidget build method called $buildCounter time(s)');
    // ignore: avoid_unnecessary_containers
    return Container(
      child: const Center(
        child: Text('Hello'),
      ),
    );
  }
}

// ignore: must_be_immutable
class MyStatefulWidget extends StatefulWidget {
  static int buildCounter = 0;
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    MyStatefulWidget.buildCounter += 1;
    // ignore: avoid_print
    print(
      'StatefulWidget build method called ${MyStatefulWidget.buildCounter} time(s)',
    );
    // ignore: avoid_unnecessary_containers
    return Container(
      child: const Center(
        child: Text('Hello'),
      ),
    );
  }
}
