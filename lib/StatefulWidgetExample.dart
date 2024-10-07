import 'package:ex_one_corso_flutter/StatelessWidgetExample.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class StatefulWidgetExample extends StatefulWidget {
  const StatefulWidgetExample({super.key});
  @override
  State<StatefulWidgetExample> createState() => _StatefulWidgetExampleState();
}

class _StatefulWidgetExampleState extends State<StatefulWidgetExample> {
  int _counter = 0;
  bool _isLoading = false;

  void incrementCounter() {
    setState(() {
      _counter++;
    });

    toggleVisibility();
  }

  void decrementCounter() {
    setState(() {
      _counter--;
    });

    toggleVisibility();
  }

  void toggleVisibility() {
    setState(() {
      _isLoading = !_isLoading;
    });

    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _isLoading = !_isLoading;
      });
    });
  }

  void resetCounter() {
    setState(() {
      _counter = 0;
    });

    toggleVisibility();
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? const StatelessWidgetExample()
        : Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: const Text('StatefullWidget'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Il valore del contatore è:',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    '$_counter',
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: _counter > 0 ? decrementCounter : null,
                    tooltip: 'Diminuisci',
                    child: const Icon(Icons.remove),
                  ),
                  const SizedBox(width: 25),
                  FloatingActionButton(
                    onPressed: incrementCounter,
                    tooltip: 'Aumenta',
                    child: const Icon(Icons.add),
                  ),
                  const SizedBox(width: 25),
                  FloatingActionButton(
                    onPressed: resetCounter,
                    tooltip: 'Azzera',
                    child: const Icon(Icons.clear_sharp),
                  ),
                ],
              ),
            ),
          );
  }
}
