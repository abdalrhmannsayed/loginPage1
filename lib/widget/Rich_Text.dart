// ignore_for_file: must_be_immutable, file_names
import 'package:flutter/material.dart';
import 'package:login/widget/txtStyleConst.dart';

class RichTextButton extends StatelessWidget {
  RichTextButton({
    super.key,
    required this.firstText,
    required this.colorFirstText,
    this.secondText,
    this.colorSecondText,
    required this.onTap,
  });

  String firstText;
  Color colorFirstText;
  String? secondText;
  Color? colorSecondText;
  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap,
      child: RichText(
        text: TextSpan(
          children: [
            // First Text
            TextSpan(
              text: firstText,
              style: hintTxtField.copyWith(
                color: colorFirstText,
              ),
            ),
            TextSpan(
              text: secondText,
              style: hintTxtField.copyWith(
                fontWeight: FontWeight.bold,
                color: colorSecondText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
