import 'package:flutter/material.dart';
import 'package:note/views/widgets/addNoteForm.dart';
import 'package:note/views/widgets/textField.dart';

class addNoteBottom extends StatelessWidget {
  const addNoteBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
        tween: Tween(begin: 0.1, end: 1),
        duration: const Duration(seconds: 1),
        builder: (_, opacity, child) => AnimatedOpacity(
              opacity: opacity,
              duration: const Duration(seconds: 1),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: addNoteForm(),
              ),
            ));
  }
}
