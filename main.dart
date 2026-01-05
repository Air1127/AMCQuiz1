import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp( // #1 Root Material app: sets app theme and first screen


    title: 'Week 1 - All 8 Widgets',
    theme: ThemeData(primarySwatch: Colors.teal),
    home: const HomeScreen(),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold( // #2 Scaffold: To implements visual layout structure


    appBar: AppBar(title: const Text('All Widgets')), // #3 AppBar: A Title bar 


    body: Center( // #7 Center: A Widget centering its child within itself. 
      child: Container( // #8 Container: A styled box with padding, color, border, shadow for ONE child 
        padding: const EdgeInsets.all(20),
        child: Column( // #6 Column(:A layout widget Vertical arranger stacking widgets top-to-bottom.
          children: [
            Row(  // #5 Row(: A layout widget in Horizontal arranger putting widgets side-by-side
              children: [
                const Icon(Icons.star),
                const Text('Flutter'), // #4 Text('Flutter'):displaying text with style  (size, color, font weight).


              ],
            ),
          ],
        ),
      ),
    ),
  );
}