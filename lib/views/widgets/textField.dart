import 'package:flutter/material.dart';

class textField extends StatelessWidget {
  const textField(
      {Key? key, this.maxLines = 1, required this.title, this.onSaved})
      : super(key: key);
  final int maxLines;
  final String title;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is required!';
        }
        return null;
      },
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: title,
        fillColor: Colors.grey.withOpacity(.3),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(width: 0, color: Colors.grey.withOpacity(.3)),
        ),
      ),
    );
  }
}
