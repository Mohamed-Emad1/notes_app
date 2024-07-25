import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: kPrimaryColor),
      width: MediaQuery.of(context).size.width,
      child: const Center(
        child: Text(
          "Add",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
