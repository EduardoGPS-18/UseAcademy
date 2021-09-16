import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          title: const Text("Use Academy"),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(Icons.book),
            ),
          ],
          leading: const Icon(Icons.ac_unit),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        bottomNavigationBar: BottomNavigationBar(
          
          currentIndex: 0,
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: const Color.fromRGBO(255, 255, 255, 1),
          unselectedItemColor: const Color.fromRGBO(50, 50, 50, 1),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Perfil",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              label: "Sacola",
            ),
          ],
        ),
      ),
    );
  }
}
