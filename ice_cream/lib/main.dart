import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Ice Cream Shop',
    home: UI(),
  ));
}

class UI extends StatefulWidget {
  const UI({Key? key}) : super(key: key);
  @override
  State<UI> createState() => _validatorState();
}

class _validatorState extends State<UI> {
  @override

  Widget build(BuildContext context) {
    return Container(
        child: Scaffold( backgroundColor: Colors.transparent,body: Homepage()));
  }
}

