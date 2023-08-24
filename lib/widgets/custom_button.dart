// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;
  Color? color;
  bool active = true;
  bool progress = false;
  final Function onclick;

  CustomButton({
    Key? key,
    required this.text,
    required this.onclick,
    this.progress = false,
    this.active = true,
    this.color,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          if (!widget.progress) {
            widget.onclick();
          }
        });
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.all(8),
        width: 90,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0x26000000),
              blurRadius: 3,
              offset: Offset(0, 1),
              spreadRadius: 1,
            ),
          ],
          borderRadius: BorderRadius.circular(100),
          color: !widget.active ? Colors.grey : const Color(0xFFFEF1EE),
        ),
        child: widget.progress
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Center(
                child: Text(
                  widget.text,
                  style: const TextStyle(
                    color: Color(0xFF410000),
                    fontSize: 14,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
      ),
    );
  }
}
