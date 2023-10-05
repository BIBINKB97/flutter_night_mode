import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  // Define light and dark themes
  final ThemeData lightTheme = ThemeData.light();
  final ThemeData darkTheme = ThemeData.dark();

  @override
  Widget build(BuildContext context) {
    // Set the theme based on the current mode
    final ThemeData currentTheme = isDarkMode ? darkTheme : lightTheme;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Night Mode Example',
      theme: currentTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Night Mode Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Toggle Night Mode:',
                style: TextStyle(fontSize: 18),
              ),
              Switch(
                value: isDarkMode,
                onChanged: (value) {
                  setState(() {
                    isDarkMode = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
