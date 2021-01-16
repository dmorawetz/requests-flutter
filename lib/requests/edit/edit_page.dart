import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:requests/common/providers/graphql_provider.dart';
import 'package:requests/data/graphql/graphql_api.graphql.dart';
import 'package:requests/requests/creation/bloc/request_form_bloc.dart';    //TODO change to edit
import 'package:requests/requests/creation/bloc/request_form_event.dart';
import 'package:requests/requests/creation/bloc/request_form_state.dart';
import 'package:requests/requests/edit/widgets/request_form.dart';
import 'package:requests/data/graphql/graphql_api.dart';

class EditPage extends StatelessWidget {
  final GraphqlApi$Query$Requests request;

  const EditPage({Key key, this.request}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = RequestFormBloc(GraphQLProvider.of(context).value);

    return BlocProvider.value(
      value: bloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text(request.title),
          elevation: 0,
          actions: [
            Builder(
              builder: (context) => IconButton(
                // icon: Icon(Icons.check),
                // onPressed: () {
                //   BlocProvider.of<RequestFormBloc>(context)
                //       .add(RequestFormEvent.save());
                //   Navigator.pop(context);
                // },
                // tooltip: 'Save',
              ),
            ),
          ],
        ),
        body: Builder(
          builder: (context) => BlocListener<RequestFormBloc, RequestFormState>(
            listenWhen: (prev, curr) => curr.maybeMap(
              error: (state) => true,
              orElse: () => false,
            ),
            listener: (BuildContext context, state) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text((state as RequestFormStateError).msg),
                  duration: Duration(seconds: 8),
                ),
              );
            },
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth < 920) {
                  return ListView(
                    children: [
                      RequestForm(request: request),
                    ],
                  );
                }

                return Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints.expand(width: 1200),
                    child: RequestForm(request: request),
                  ),
                );
              },
            ),
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
        Text("Was kann Daniel für dich tun?",
            style: Theme.of(context).textTheme.headline1),
        Image.network("https://requests.morawetz.dev/images/new_task.png"),
      ],
    );
  }
}
