import 'package:flutter/material.dart';

class W3 extends StatelessWidget {
  const W3(
      {super.key,
      required this.value,
      required this.callbackadd,
      required this.callbackless});

  final double value;
  final Function() callbackadd;
  final Function() callbackless;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$value', key: Key('W3Value')),
        IconButton(
          onPressed: callbackadd,
          icon: Icon(Icons.add),
          key: Key('W3Add'),
        ),
        IconButton(
            onPressed: callbackless,
            icon: Icon(Icons.remove),
            key: Key('W3Sub'))
      ],
    );
  }
}
