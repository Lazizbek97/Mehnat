import 'package:flutter/material.dart';

class FilterCardMy extends StatelessWidget {
  var text;
  var trailing;

  FilterCardMy({
    Key? key,
    this.text,
    this.trailing
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(text),
        trailing: trailing
      ),
    );
  }
}
