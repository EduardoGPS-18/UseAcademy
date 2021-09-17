import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: 400,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => Container(
              color: Colors.blueGrey,
              height: 300,
              width: 300,
              child: Text(
                "$index",
                style: const TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
              alignment: Alignment.center,
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 16,
              width: 16,
            ),
            itemCount: 16,
          ),
        ),
      ),
    );
  }
}
