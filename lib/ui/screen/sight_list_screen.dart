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
        title: RichText(
          text: const TextSpan(
            text: 'С',
            style: TextStyle(
              color: Color(0xFF4CAF50),
              fontWeight: FontWeight.bold,
              fontSize: 32.0,
              height: 1.125,
            ),
            children: [
              TextSpan(
                text: 'писок\n',
                style: TextStyle(
                  color: Color(0xFF252849),
                ),
              ),
              TextSpan(
                text: 'и',
                style: TextStyle(
                  color: Color(0xFFFCDD3D),
                ),
              ),
              TextSpan(
                text: 'нтересных мест',
                style: TextStyle(
                  color: Color(0xFF252849),
                ),
              ),
            ],
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
