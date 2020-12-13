import 'package:flutter/material.dart';
import 'package:requests/data/graphql/graphql_api.dart';

class RadioListDialog extends StatefulWidget {
  const RadioListDialog(
      {this.onValueChange, this.initialValue, @required this.title});

  final String title;
  final Priority initialValue;
  final void Function(Priority) onValueChange;

  @override
  State createState() => new RadioListDialogState();
}

class RadioListDialogState extends State<RadioListDialog> {
  Priority _selected;

  @override
  void initState() {
    super.initState();
    _selected = widget.initialValue;
  }

  Widget build(BuildContext context) {
    return new SimpleDialog(
      title: new Text(widget.title),
      children: <Widget>[
        new Container(
            padding: const EdgeInsets.all(10.0),
            child: new Column(
              children: <Priority>[Priority.low, Priority.medium, Priority.high]
                  .map((value) {
                return new RadioListTile(
                  value: value,
                  groupValue: _selected,
                  onChanged: (value) {
                    setState(() {
                      _selected = value;
                    });
                    if (widget.onValueChange != null)
                      widget.onValueChange(value);
                    Navigator.pop(context);
                  },
                  title: new Text(value
                      .toString()
                      .replaceAll('Priority.', '')
                      .toUpperCase()),
                );
              }).toList(),
            )),
      ],
    );
  }
}
