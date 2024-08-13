import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/widgets/colors_listview.dart';

class EditColorsListView extends StatefulWidget {
  const EditColorsListView({super.key, required this.note});

  final NotesModel note;
  @override
  State<EditColorsListView> createState() => _EditColorsListView();
}

class _EditColorsListView extends State<EditColorsListView> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
                widget.note.color = kColors[index].value;
              },
              child: ColorItem(
                isPicked: currentIndex == index,
                color: kColors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
