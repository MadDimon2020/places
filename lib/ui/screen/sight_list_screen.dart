import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
        toolbarHeight: 72.0,
        title: const Text(
          'Список\nинтересных мест',
          style: TextStyle(
            color: Color(0xFF252849),
            fontWeight: FontWeight.bold,
            fontSize: 32.0,
            height: 1.125,
          ),
          textAlign: TextAlign.left,
        ),
      ),
      body: const Center(
        child: Text('Hello'),
      ),
    );
  }
}
