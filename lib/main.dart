import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'models/transaction.dart';
import 'ui/transaction_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(TransactionAdapter());
  await Hive.openBox<Transaction>('transactions');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Demo Settings',
      home: TransactionPage(),
    );
  }
}
