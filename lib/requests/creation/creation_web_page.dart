import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:requests/requests/creation/bloc/request_form_bloc.dart';
import 'package:requests/requests/creation/bloc/request_form_state.dart';
import 'package:requests/requests/creation/widgets/request_form.dart';

class CreationWebPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      //create: (context) => RequestFormBloc(GraphQLProvider.of(context).value),
      child: Scaffold(
        body: BlocBuilder<RequestFormBloc, RequestFormState>(
          buildWhen: (prev, curr) => curr.maybeMap(
            saved: (_) => true,
            orElse: () => false,
          ),
          builder: (context, state) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 920) {
                return state is Saved
                    ? _ConfirmationPage()
                    : ListView(
                        children: [
                          _Title(),
                          RequestForm(),
                          SizedBox(
                            height: 75,
                          ),
                        ],
                      );
              }

              return Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(width: 1200),
                  child: state is Saved
                      ? _ConfirmationPage()
                      : Row(
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
        SizedBox(
          height: 75,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text("What can Daniel do for you?",
              style: Theme.of(context).textTheme.headline1),
        ),
        Image.network("https://requests.morawetz.dev/images/new_task.png"),
      ],
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
