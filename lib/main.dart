import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter Bloc',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counter BLoC'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            "1",
            style: TextStyle(
                fontSize: 50
            ),
          ),
        ),
        floatingActionButton: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
                FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.add),
                ),
                const SizedBox(height: 20,),
                FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.restart_alt),
                ),
                const SizedBox(height: 20,),
                FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.remove_sharp),
                ),
            ],
        ),
      ),
    );
  }
}