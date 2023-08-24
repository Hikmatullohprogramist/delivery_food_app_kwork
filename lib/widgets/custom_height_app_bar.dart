// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final Size preferredSize;
  final Widget title;
  List<Widget>? action;

  CustomAppBar(
      {Key? key, required this.preferredSize, required this.title, this.action})
      : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFFEF7FF),
      automaticallyImplyLeading: false,
      actions: widget.action,
      title: widget.title,

      // Other AppBar properties can be added here
    );
  }
}
