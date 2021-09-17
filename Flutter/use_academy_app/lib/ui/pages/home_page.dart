import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: SizedBox(
            width: 64,
            height: 64,
            child: IndexedStack(
              index: 1,
              children: [
                Container(height: 300, width: 400, color: Colors.red),
                Container(height: 300, width: 400, color: Colors.green),
                Container(height: 300, width: 400, color: Colors.blue),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
