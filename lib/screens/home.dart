import 'package:first_app/utils/dialog.dart';
import 'package:first_app/widgets/filters.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  onPressFilter() {
    openDialog(context, '/', 1000, const Filter());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
          child: Column(
        children: <Widget>[
          const Text('Test'),
          IconButton(
              onPressed: () => onPressFilter(),
              icon: const Icon(
                Icons.filter_list_outlined,
                color: Colors.black,
                size: 30,
              ))
        ],
      )),
    ));
  }
}
