import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Comepage extends StatefulWidget {
  const Comepage({Key? key}) : super(key: key);

  @override
  State<Comepage> createState() => _ComepageState();
}

class _ComepageState extends State<Comepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Comepage'),
      ),
    );
  }
}
