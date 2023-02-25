import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant.dart';

class PFRaisedButton extends StatelessWidget {
  const PFRaisedButton({Key? key, required this.title, required this.onPressed}) : super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kColorPrimary,
      elevation: 2,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onPressed,
        child: Container(
          height: 50,
          width: Get.width,
          alignment: Alignment.center,
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}