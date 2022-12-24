// ignore_for_file: must_be_immutable, file_names
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget(
      {Key? key,
      required this.text,
      required this.txtColor,
      this.width,
      this.bgColor,
      this.onTap})
      : super(key: key);

  final String text;
  final double? width;
  final Color? bgColor;
  final Color txtColor;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(top: 18, bottom: 18),
        width: width,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: txtColor,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }
}
