import 'package:flutter/material.dart';

class W1 extends StatelessWidget {
  const W1(
      {super.key,
      required this.value,
      required this.callbackadd,
      required this.callbackless});
  // Enviar un callback al home_page.dart para que se encargue de actualizar el valor de counter

  final double value;
  final Function() callbackadd;
  final Function() callbackless;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$value',
          key: const Key('W1Value'),
        ),
        IconButton(
            onPressed: callbackadd, icon: Icon(Icons.add), key: Key('W1Add')),
        IconButton(
            onPressed: callbackless,
            icon: Icon(Icons.remove),
            key: Key('W1Sub'))
      ],
    );
  }
}
