import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteColor});

  final Color noteColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: noteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                "Flutter Tips",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  "Build Your Career with Flutter",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                "21 May 2023",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
