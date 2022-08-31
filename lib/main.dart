import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:places/ui/screen/sight_list_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dummy Places App',
      home: SightListScreen(),
    );
  }
}
