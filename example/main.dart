import 'package:flutter/material.dart';
import 'package:flutter_ex_kit/flutter_ex_kit.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FlutterExKitExample(),
  ));
}

class FlutterExKitExample extends StatelessWidget {
  const FlutterExKitExample({super.key});

  @override
  Widget build(BuildContext context) {
    final fruits = ['Apple', 'Banana', 'Orange'];

    return Scaffold(
      appBar: AppBar(
        title: 'Flutter Ex Kit Demo'.style(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        backgroundColor: '#4A90E2'.toColor(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Responsive context extensions
            Text('Screen Width: ${context.width.toInt()}px | Dark Mode: ${context.isDarkMode}')
                .all(12),

            // SizedBox spacing extension
            16.height,

            // Padding extension
            Container(
              color: Colors.blue.shade50,
              child: const Text('Widget with symmetric padding'),
            ).symmetric(horizontal: 16, vertical: 8),

            12.height,

            // Int number extensions
            Text('Number 22 in ordinal: ${22.ordinal}').all(12),
            Text('Number 455 in roman: ${455.roman}').all(12),

            // Duration helpers
            Text('5 seconds formatted: ${5.seconds}').all(12),

            // String extensions
            Text('capitalize: ${"flutter ex kit".capitalize()}').all(12),

            // DateTime extensions
            Text('Today formatted: ${DateTime.now().toDateString} (${DateTime.now().timeAgo})')
                .all(12),

            // Iterable mapIndexed
            ...fruits.mapIndexed(
              (index, fruit) => Text('${index + 1}. $fruit').symmetric(horizontal: 16, vertical: 4),
            ),

            20.height,

            // Widget extensions (onTap, center, opacity)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                'Tap Me (Widget onTap extension)',
                style: TextStyle(color: Colors.white),
              ),
            ).onTap(() {
              context.showSnackBarText('Hello from flutter_ex_kit!');
            }).center(),

            30.height,
          ],
        ),
      ),
    );
  }
}
