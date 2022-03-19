import 'package:first_app/utils/media_query.dart';
import 'package:flutter/material.dart';

void openDialog(BuildContext context, String route, int delay, Widget widget) {
  showGeneralDialog(
      context: context,
      useRootNavigator: false,
      barrierLabel: 'Label',
      barrierDismissible: true,
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (context, anim1, anim2) {
        return Container(
          padding: const EdgeInsets.all(0),
          alignment: Alignment.bottomCenter,
          child: Container(
              height: getWidgetSize(context).height,
              margin: const EdgeInsets.only(left: 0, right: 0, top: 0),
              decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
              ),
              child: widget),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
            position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0))
                .animate(anim1),
            child: child);
      });
}

void closeDialog(BuildContext context) {
  Navigator.pop(context);
}
