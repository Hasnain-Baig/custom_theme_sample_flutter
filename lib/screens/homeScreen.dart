import 'package:flutter/material.dart';

import '../theme/myTheme.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: Text("Themes App"),
          actions: [
            Row(
              children: [
                currentTheme.currentMode == ThemeMode.light
                    ? Text("Light Theme")
                    : Text("Dark Theme"),
                Switch(
                  activeColor: Theme.of(context).colorScheme.onSurface,
                  value: isDarkTheme,
                  onChanged: (value) {
                    setState(() {
                      isDarkTheme = value;
                      currentTheme.toggleTheme();
                    });
                  },
                ),
              ],
            ),
          ],
        ),
        body: Container(
          color: Theme.of(context).colorScheme.secondary,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text(
                "HELLO WORLD",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ))
            ],
          ),
        ));
  }
}
