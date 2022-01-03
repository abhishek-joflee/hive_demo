import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  void dispose() {
    Hive.box('transactions').close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
