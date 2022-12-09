import 'package:flutter/material.dart';
import 'package:note/views/widgets/CustomIcon.dart';


class customAppbar extends StatelessWidget {
  const customAppbar({Key? key, required this.text, required this.icoon}) : super(key: key);
final String text;
final Icon icoon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes',style: Theme.of(context).textTheme.headline4,),
        const Spacer(),
        CustomIcon(ico: icoon,),
      ],
    );
  }
}
