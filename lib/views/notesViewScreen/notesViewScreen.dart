import 'package:flutter/material.dart';
import 'package:note/views/notesViewScreen/addNoteBottm.dart';
import 'package:note/views/notesViewScreen/noteItem.dart';
import 'package:note/views/notesViewScreen/viewNotesBody.dart';
import 'package:note/views/widgets/customAppbar.dart';

class notesView extends StatelessWidget {
  const notesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Column(
            children: const [
              customAppbar(
                text: 'Notes',
                icoon: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
              Expanded(
                child: viewNotesBody(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => addBottomSheet(context),
        child: Icon(Icons.add),
      ),
    );
  }

  void addBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) => const addNoteBottom(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
    );
  }
}
