import 'package:flutter/material.dart';

import '../../../shared/styles/colors.dart';

class HomeScreenCustomAppbarWidget extends StatelessWidget {
  String title;
  HomeScreenCustomAppbarWidget({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leadingWidth: 89,
      centerTitle: true,
      title: Row(
        children: [
          Column(
            children: [
              Image(
                image: AssetImage(title),
              ),
              SizedBox(
                height: 16,
              )
            ],
          )
        ],
      ),
      leading: Icon(Icons.sort_rounded),
      actions: [
        Icon(Icons.notification_add),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
