import 'package:flutter/material.dart';

import 'pages.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)?.settings.arguments as ProfileNavigateArguments;
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Center(
            child: Column(
              children: [
                const Text("Profile page"),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(arguments.name),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("${arguments.age}"),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Home"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
