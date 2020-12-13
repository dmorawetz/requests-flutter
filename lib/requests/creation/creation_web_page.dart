import 'package:flutter/material.dart';
import 'package:requests/requests/creation/widgets/request_form.dart';

class CreationWebPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 920) {
            return Column(
              children: [
                _Title(),
                RequestForm(),
              ],
            );
          }

          return Center(
            child: ConstrainedBox(
              constraints: BoxConstraints.expand(width: 1200),
              child: Row(
                children: [
                  Expanded(
                    child: _Title(),
                  ),
                  Expanded(
                    child: RequestForm(),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Was kann Daniel für dich tun?",
            style: Theme.of(context).textTheme.headline1),
        Image.network("https://requests.morawetz.dev/images/new_task.png"),
      ],
    );
  }
}
