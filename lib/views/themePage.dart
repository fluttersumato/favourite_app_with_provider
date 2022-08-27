import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/ThemeChangerProvider.dart';

class ThemePage extends StatefulWidget {
  const ThemePage({Key? key}) : super(key: key);

  @override
  State<ThemePage> createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChangerProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Theme Settings'),
        ),
      ),
      body: Column(
        children: [
          RadioListTile(
              title: Text('Light Mode'),
              value: ThemeMode.light,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.changeTheme),
          RadioListTile(
              title: Text('Dark Mode'),
              value: ThemeMode.dark,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.changeTheme),
          RadioListTile(
              title: Text('System Theme'),
              value: ThemeMode.system,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.changeTheme),
          Icon(Icons.headphones)
        ],
      ),
    );
  }
}
