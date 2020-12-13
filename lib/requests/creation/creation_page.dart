import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:requests/requests/creation/bloc/request_form_bloc.dart';
import 'package:requests/requests/creation/bloc/request_form_event.dart';
import 'package:requests/requests/creation/widgets/request_form.dart';

class CreationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RequestFormBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("New request"),
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(Icons.check),
              onPressed: () {
                BlocProvider.of<RequestFormBloc>(context)
                    .add(RequestFormEvent.save());
                Navigator.pop(context);
              },
              tooltip: 'Save',
            ),
          ],
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 920) {
              return ListView(
                children: [
                  RequestForm(),
                ],
              );
            }

            return Center(
              child: ConstrainedBox(
                constraints: BoxConstraints.expand(width: 1200),
                child: RequestForm(),
              ),
            );
          },
        ),
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
