import 'package:flutter/material.dart';
import 'package:user_preferences/shared_preferences/preferencias.dart';
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
        children: [
          Text('Dark Mode: ${Prefrences.isDarkmode}'),
          const Divider(),
          Text('Género: ${Prefrences.gender}'),
          const Divider(),
          Text('Nombre de Usuario: ${Prefrences.name}'),
        ],
      ),
    );
  }
}
