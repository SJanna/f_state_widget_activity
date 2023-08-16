import 'package:flutter/material.dart';

import '../widget/w1.dart';
import '../widget/w2.dart';
import '../widget/w3.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double counter = 0.0;

  void _incrementCounter1() {
    setState(() {
      counter++;
    });
  }

  void _decrementCounter1() {
    setState(() {
      counter--;
    });
  }

  void _incrementCounter_01() {
    setState(() {
      counter = counter + 0.1;
    });
  }

  void _decrementCounter_01() {
    setState(() {
      counter = counter - 0.1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: [
          const IconButton(
              onPressed: null, icon: Icon(Icons.refresh), key: Key('Refresh')),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              W1(
                  value: counter,
                  callbackadd: _incrementCounter_01,
                  callbackless: _decrementCounter_01),
              W2(
                value: counter,
              ),
              W3(
                  value: counter,
                  callbackadd: _incrementCounter1,
                  callbackless: _decrementCounter1),
            ],
          ),
        ],
      )),
    );
  }
}
