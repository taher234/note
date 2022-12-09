import 'package:flutter/material.dart';
import 'package:note/views/widgets/textField.dart';

class addNoteForm extends StatefulWidget {
  const addNoteForm({Key? key}) : super(key: key);

  @override
  State<addNoteForm> createState() => _addNoteFormState();
}

class _addNoteFormState extends State<addNoteForm> {
  String? title, content;

  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode _autovalid = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key:formKey,
        child: Column(
      children: [
        textField(
          title: 'title',
          onSaved: (value) => title = value,
        ),
        const SizedBox(height: 30),
        textField(
          title: 'content',
          maxLines: 5,
          onSaved: (value) => content = value,
        ),
        const SizedBox(
          height: 80,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .06,
          width: MediaQuery.of(context).size.width * .9,
          child: ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              }else{
                _autovalid=AutovalidateMode.always;
              }
            },
            child: Text(
              'create Note',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ),
      ],
    ));
  }
}
