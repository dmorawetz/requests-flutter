import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:requests/requests/creation/bloc/request_form_bloc.dart';
import 'package:requests/requests/creation/bloc/request_form_state.dart';
import 'package:requests/requests/creation/widgets/request_form.dart';

class CreationSuccessWebPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _ConfirmationPage(),
    );
  }
}

class _ConfirmationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 75,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text("Ay ay, Daniel now has it on his list!",
              style: Theme.of(context).textTheme.headline1),
        ),
        SizedBox(
          height: 25,
        ),
        Image.network("https://requests.morawetz.dev/images/sent.png"),
      ],
    );
  }
}
