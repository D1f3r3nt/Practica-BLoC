import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practica_bloc/bloc/counter_bloc.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final counterBloc = BlocProvider.of<CounterBloc>(context);

    return MaterialApp(
      title: 'Counter Bloc',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counter BLoC'),
          centerTitle: true,
        ),
        body: Center(
          child: BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Text(
                state.number.toString(),
                style: const TextStyle(fontSize: 50),
              );
            },
          ),
        ),
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () => counterBloc.add(AddCounter()),
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              onPressed: () => counterBloc.add(RefreshCounter()),
              child: const Icon(Icons.restart_alt),
            ),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              onPressed: () => counterBloc.add(RemoveCounter()),
              child: const Icon(Icons.remove_sharp),
            ),
          ],
        ),
      ),
    );
  }
}
