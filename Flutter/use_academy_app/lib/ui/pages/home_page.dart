import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Wrap(
            spacing: 16,
            alignment: WrapAlignment.center,
            children: [
              Chip(
                label: const Text("Teste Wrap with Chip"),
                deleteIcon: const Icon(Icons.remove),
                onDeleted: () {},
              ),
              Chip(
                label: const Text("Teste Wrap"),
                deleteIcon: const Icon(Icons.remove),
                onDeleted: () {},
              ),
              Chip(
                label: const Text("Teste Wrap with Chip"),
                deleteIcon: const Icon(Icons.remove),
                onDeleted: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
