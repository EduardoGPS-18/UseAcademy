import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          // child: Image.asset("lib/assets/images/image01.jpeg"),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 300,
              minHeight: 100,
              maxHeight: 200,
              minWidth: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                Text("Teste"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
