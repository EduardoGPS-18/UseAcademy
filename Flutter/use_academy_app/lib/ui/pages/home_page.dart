import 'package:flutter/material.dart';

import 'pages.dart';

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
              children: const [
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

class NavigateArguments {
  final String routeName;
  final Object? arguments;

  NavigateArguments({required this.routeName, this.arguments});
}

class ProfileNavigateArguments extends RouteSettings {
  @override
  String name;
  int age;
  double height;
  ProfileNavigateArguments({
    required this.name,
    required this.age,
    required this.height,
  });
}

class SecondContainer extends StatefulWidget {
  const SecondContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<SecondContainer> createState() => _SecondContainerState();
}

class _SecondContainerState extends State<SecondContainer> {
  late String text;
  late String name;
  late int age;

  @override
  void initState() {
    name = "Eduardo";
    age = 19;
    super.initState();
  }

  void goToProfilePage() {
    var args = ProfileNavigateArguments(age: age, name: name, height: 1.70);
    NavigateArguments navargs = NavigateArguments(routeName: '/profile', arguments: args);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const ProfilePage(),
        settings: RouteSettings(
          name: '/profile',
          arguments: navargs,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.green[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nome: $name"),
            Text("Nome: $age"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 24),
                ElevatedButton(
                  onPressed: goToProfilePage,
                  child: const Text("Profile page"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FirstContainer extends StatelessWidget {
  final String text = "Profile page";
  final String name = "Eduardo";
  final int age = 19;

  void goToProfilePage(BuildContext context) {
    var args = ProfileNavigateArguments(age: age, name: name, height: 1.70);
    NavigateArguments navargs = NavigateArguments(routeName: '/profile', arguments: args);

    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => const ProfilePage(),
      settings: RouteSettings(
        name: '/profile',
        arguments: navargs,
      ),
    ));
  }

  const FirstContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.blue[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nome: $name"),
            Text("Nome: $age"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 24),
                ElevatedButton(
                  onPressed: () => goToProfilePage(context),
                  child: const Text("Profile page"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
