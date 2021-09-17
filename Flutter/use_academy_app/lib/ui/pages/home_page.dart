import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Container(
            child: ListView.separated(
              itemBuilder: (context, index) => const ListTile(
                title: Text("Título"),
                subtitle: Text("Sub título"),
                leading: CircleAvatar(
                  child: Text("G"),
                  backgroundImage: AssetImage('lib/assets/images/image01.jpeg'),
                ),
                trailing: Icon(Icons.edit),
                tileColor: Colors.lightBlue,
              ),
              itemCount: 20,
              separatorBuilder: (ctx, index) => const SizedBox(
                height: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
