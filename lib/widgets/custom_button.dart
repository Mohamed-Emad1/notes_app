import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false});

  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: kPrimaryColor),
        width: MediaQuery.of(context).size.width,
        child:Center(
          child: isLoading ? const CircularProgressIndicator(
            color: Colors.black,
          ):const Text(
            "Add",
            style:TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
