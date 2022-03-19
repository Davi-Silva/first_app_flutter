import 'package:first_app/utils/dialog.dart';
import 'package:first_app/utils/media_query.dart';
import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SafeArea(
      child: SizedBox(
        width: getWidgetSize(context).width,
        child: Column(
          children: [
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Filter',
                  style: TextStyle(color: Colors.black),
                ),
                IconButton(
                    onPressed: () => closeDialog(context),
                    icon: const Icon(Icons.close))
              ],
            )),
            // ListView.separated()
          ],
        ),
      ),
    ));
  }
}
