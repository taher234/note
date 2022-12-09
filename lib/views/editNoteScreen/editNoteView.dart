import 'package:flutter/material.dart';
import 'package:note/views/widgets/customAppbar.dart';
import 'package:note/views/widgets/textField.dart';

class editNoteView extends StatelessWidget {
  const editNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Column(
            children: [
              customAppbar(
                text: 'Edit note',
                icoon: Icon(
                  Icons.done,
                  size: 28,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              textField(
                title: 'title',
              ),
              SizedBox(height: 30),
              textField(
                title: 'content',
                maxLines: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
