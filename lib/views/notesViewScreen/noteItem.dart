import 'package:flutter/material.dart';
import 'package:note/views/editNoteScreen/editNoteView.dart';

class noteItem extends StatelessWidget {
  const noteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => editNoteView())),
      child: Card(
        color: Colors.orange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  'Flutter tips',
                  style: Theme.of(context).textTheme.headline5,
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'taher amin taher elzoghby computer science',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 33,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'May21, 2022',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
