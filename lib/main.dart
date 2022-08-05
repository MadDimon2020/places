import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dummy Places App',
      home: MyFirstWidget(),
    );
  }

  // В Stateless виджете нет геттера context
  // Type getRuntimeType() => context.runtimeType;
  // }
}

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

  Type getRuntimeType() => context.runtimeType;
}
