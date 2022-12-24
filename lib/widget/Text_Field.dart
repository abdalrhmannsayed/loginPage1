// ignore_for_file: must_be_immutable, file_names
import 'package:flutter/material.dart';
import 'package:login/widget/txtStyleConst.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({
    Key? key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.iconColor,
    this.passSecurity,
    this.width,
    this.keyboardType,
    this.controller,
  }) : super(key: key);

  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? iconColor;
  final bool? passSecurity;
  final double? width;
  TextInputType? keyboardType;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: passSecurity ?? false,
      style: const TextStyle(
        color: Colors.black,
        fontFamily: 'OpenSans',
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Color.fromRGBO(238, 238, 238, 1)),
          borderRadius: BorderRadius.circular(15),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: hintTxtField,
      ),
    );
  }
}
