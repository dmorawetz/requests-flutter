import 'package:flutter/material.dart';

class ListOverviewErrorWidget extends StatelessWidget {
  final String msg;

  const ListOverviewErrorWidget({Key key, this.msg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Text(msg),
    );
  }
}
