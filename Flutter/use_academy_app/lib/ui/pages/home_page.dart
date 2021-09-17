import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: LayoutBuilder(
            builder: (context, constraintsA) => Row(
              children: [
                Container(
                  color: Colors.red,
                  width: constraintsA.maxWidth * 70 / 100,
                ),
                Container(
                  color: Colors.blue,
                  width: constraintsA.maxWidth * 30 / 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
