import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key,required this.icon});

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 44, 44, 44),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Icon(
          icon,
          size: 25,
        ),
      ),
    );
  }
}
