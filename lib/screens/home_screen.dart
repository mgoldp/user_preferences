import 'package:flutter/material.dart';
import 'package:user_preferences/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Dark Mode'),
          Divider(),
          Text('Género'),
          Divider(),
          Text('Nombre de Usuario'),
        ],
      ),
    );
  }
}
