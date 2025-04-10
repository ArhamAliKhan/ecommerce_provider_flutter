import 'package:flutter/material.dart';

import '../../../constraints.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: kcontentColor,
            padding: EdgeInsets.all(20),
          ),
          onPressed: () {},
          icon: Image.asset("images/icon.png", height: 20),
        ),
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: kcontentColor,
            padding: EdgeInsets.all(20),
          ),
          onPressed: () {},
          iconSize: 30,
          icon: Icon(Icons.notification_add_outlined),
        ),
      ],
    );
    ;
  }
}
