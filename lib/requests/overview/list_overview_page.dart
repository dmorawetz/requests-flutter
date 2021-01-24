import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:requests/data/graphql/graphql_api.dart';
import 'package:requests/requests/creation/creation_page.dart';
import 'package:requests/requests/overview/bloc/list_overview_bloc.dart';
import 'package:requests/requests/overview/bloc/list_overview_event.dart';
import 'package:requests/requests/overview/bloc/list_overview_state.dart';
import 'package:requests/requests/overview/request_detail_page.dart';
import 'package:requests/requests/overview/widgets/list_overview_error.dart';
import 'package:requests/requests/overview/widgets/list_overview_populated.dart';

class RequestsListOverviewPage extends StatefulWidget {
  @override
  _RequestsListOverviewPageState createState() =>
      _RequestsListOverviewPageState();
}

class _RequestsListOverviewPageState extends State<RequestsListOverviewPage> {
  Completer<void> _refreshCompleter;
  final _refreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    super.initState();
    _refreshCompleter = Completer<void>();

    WidgetsBinding.instance
        .addPostFrameCallback((_) => _refreshKey.currentState.show());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: ListOverviewBloc(GraphQLProvider.of(context).value),
      child: Scaffold(
        body: SafeArea(
          child: Builder(
            builder: (context) => RefreshIndicator(
              key: _refreshKey,
              onRefresh: () async {
                context
                    .read<ListOverviewBloc>()
                    .add(ListOverviewEvent.reload());
                return _refreshCompleter.future;
              },
              child: ListView(
                children: [
                  _Header(),
                  ListOverviewView(
                    onLoaded: () {
                      _refreshCompleter.complete();
                      _refreshCompleter = Completer<void>();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.history),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CreationPage()));
          },
          icon: Icon(Icons.add),
          label: Text('Add request'),
          tooltip: 'Add request',
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, top: 18, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => SimpleDialog(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                                "https://docs.morawetz.dev/seafhttp/files/f38412eb-68dc-4fcd-b813-379e3de25010/requests-morawetz-dev-qr.png"),
                          ),
                          InkWell(
                            onTap: () {
                              Clipboard.setData(ClipboardData(
                                  text:
                                      'Trage alle Infos bitte gleich hier ein: https://requests.morawetz.dev/#/werhl234lkj'));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text('Copied!'),
                              ));

                              Navigator.pop(context);
                            },
                            child: Center(
                              child: Row(
                                children: [
                                  Text(
                                    'Copy to clipboard',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.pink,
                                        ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(
                                    Icons.content_copy,
                                    color: Colors.pink,
                                    size: 14,
                                  ),
                                ],
                                mainAxisAlignment: MainAxisAlignment.center,
                              ),
                            ),
                          ),
                        ],
                      ));
            },
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://lh4.googleusercontent.com/-ornvonlrF1Q/AAAAAAAAAAI/AAAAAAAAAAA/ou7BqkTiFBk/s44-p-k-no-ns-nd/photo.jpg"),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.settings_outlined,
              color: Colors.black54,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

class ListOverviewView extends StatelessWidget {
  final VoidCallback onLoaded;

  const ListOverviewView({Key key, @required this.onLoaded}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 56.0),
      child: BlocConsumer<ListOverviewBloc, ListOverviewState>(
          listener: (context, state) {
        if (state is ListOverviewLoaded) {
          onLoaded();
        }
      }, builder: (context, state) {
        if (state is ListOverviewError) {
          return ListOverviewErrorWidget(msg: state.msg);
        }

        if (state is ListOverviewLoading && state.data == null) {
          return SizedBox();
        }

        var data = state.data;

        final allRequests = data.requests
          ..sort((a, b) => a.dueDate.compareTo(b.dueDate));

        final userStatistics = data.userStatistics.first;

        return ListOverviewPopulated(
          requests: allRequests,
          userStatistics: userStatistics,
        );
      }),
    );
  }
}
