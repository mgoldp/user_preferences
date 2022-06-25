import 'package:flutter/material.dart';
import 'package:user_preferences/screens/screens.dart';
import 'package:user_preferences/shared_preferences/preferencias.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Prefrences.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        SettingsScreen.routeName: (_) => const SettingsScreen(),
      },
      theme: ThemeData.light(),
    );
  }
}
