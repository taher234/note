import 'package:flutter/material.dart';
import 'package:note/views/notesViewScreen/noteItem.dart';

class viewNotesBody extends StatelessWidget {
  const viewNotesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (_, index) => const Padding(
        padding: EdgeInsets.all(3),
        child: noteItem(),
      ),
    );
  }
}
