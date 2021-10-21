import 'package:example/screens/home/components/body.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(),
      body: Body(),
    );
  }

  AppBar MyAppbar() {
    return AppBar (
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: null,
      ),
    );
  }
}
