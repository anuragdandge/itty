import 'package:flutter/material.dart';

class Links extends StatefulWidget {
  const Links({Key? key}) : super(key: key);

  @override
  _LinksState createState() => _LinksState();
}

class _LinksState extends State<Links> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Links"),
      ),
    );
  }
}
