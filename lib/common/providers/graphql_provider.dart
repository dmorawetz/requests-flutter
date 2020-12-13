import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphqlProvider extends StatelessWidget {
  final Widget child;

  const GraphqlProvider({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final url = kIsWeb
        ? 'localhost'
        : Platform.isAndroid
            ? '10.0.2.2'
            : 'localhost';
    Link link = HttpLink(uri: 'http://$url:4001/');

    return GraphQLProvider(
      client: ValueNotifier<GraphQLClient>(
        GraphQLClient(
          link: link,
          cache: InMemoryCache(),
        ),
      ),
      child: this.child,
    );
  }
}
