import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('settings');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Settings',
      home: Scaffold(
        body: ValueListenableBuilder<Box>(
          valueListenable: Hive.box('settings').listenable(keys: ['darkMode']),
          builder: (context, box, widget) {
            return Center(
              child: Switch(
                value: box.get('darkMode', defaultValue: false),
                onChanged: (val) {
                  box.put('darkMode', val);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
