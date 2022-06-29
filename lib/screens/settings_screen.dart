import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_preferences/providers/theme_provider.dart';
import 'package:user_preferences/shared_preferences/preferencias.dart';
import 'package:user_preferences/widgets/custom_drawer.dart';

class SettingsScreen extends StatefulWidget {
  static const String routeName = 'Settings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        drawer: const SideMenu(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Ajustes',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
                ),
                const Divider(),
                SwitchListTile.adaptive(
                    value: Prefrences.isDarkmode,
                    title: const Text('Dark Mode'),
                    onChanged: (value) {
                      Prefrences.isDarkmode = value;
                      final themeProvider =
                          Provider.of<ThemeProvider>(context, listen: false);

                      value
                          ? themeProvider.setDarkmode()
                          : themeProvider.setLightMode();

                      setState(() {});
                    }),
                const Divider(),
                RadioListTile<int>(
                    value: 1,
                    groupValue: Prefrences.gender,
                    title: const Text('Masculino'),
                    onChanged: (value) {
                      Prefrences.gender = value ?? 1;
                      setState(() {});
                    }),
                const Divider(),
                RadioListTile<int>(
                    value: 2,
                    groupValue: Prefrences.gender,
                    title: const Text('Femenino'),
                    onChanged: (value) {
                      Prefrences.gender = value ?? 2;
                      setState(() {});
                    }),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    initialValue: Prefrences.name,
                    onChanged: (value) {
                      Prefrences.name = value;
                      setState(() {});
                    },
                    decoration: const InputDecoration(
                      labelText: 'Nombre',
                      helperText: 'Nombre del Usuario',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
