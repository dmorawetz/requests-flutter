import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:requests/common/providers/graphql_provider.dart';
import 'package:requests/requests/creation/creation_page.dart';
import 'package:requests/requests/creation/creation_web_page.dart';
import 'package:requests/requests/overview/list_overview_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GraphqlProvider(
      child: MaterialApp(
        title: 'Requests',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 30),
          ),
        ),
        home: kIsWeb ? CreationWebPage() : RequestsListOverviewPage(),
      ),
    );
  }
}
