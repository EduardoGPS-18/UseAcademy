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
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: 16,
              physics: BouncingScrollPhysics(),
              
              itemBuilder: (ctx, i) => Container(
                color: Colors.green,
                child: Center(child: Text("$i")),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
