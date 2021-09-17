import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Container(
            color: Colors.amber[300],
            child: Column(
              children: [
                FirstContainer(),
                SecondContainer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SecondContainer extends StatefulWidget {
  const SecondContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<SecondContainer> createState() => _SecondContainerState();
}

class _SecondContainerState extends State<SecondContainer> {
  late String name;

  @override
  void initState() {
    name = "Tulio";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.green[100],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            const SizedBox(width: 24),
            ElevatedButton(
              onPressed: () {
                name = 'Marco';
              },
              child: const Text("Trocar nome"),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstContainer extends StatelessWidget {
  String name = "Dudu";

  FirstContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.blue[100],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            const SizedBox(width: 24),
            ElevatedButton(
              onPressed: () {
                name = 'Marco';
                print(name);
              },
              child: Text("Trocar nome"),
            ),
          ],
        ),
      ),
    );
  }
}
