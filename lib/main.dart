import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:requests/models/graphql/graphql_api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Link link = HttpLink(uri: 'http://localhost:4001/');

    return GraphQLProvider(
      client: ValueNotifier<GraphQLClient>(
        GraphQLClient(
          link: link,
          cache: InMemoryCache(),
        ),
      ),
      child: MaterialApp(
        title: 'Requests',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 30),
          ),
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 920) {
            return Column(
              children: [
                _Title(),
                _Form(),
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
                    child: _Form(),
                  )
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
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

class _Form extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(labelText: 'Name', filled: true),
        ),
        TextField(
          decoration: InputDecoration(
            labelText: 'Date',
            filled: true,
            suffixIcon: IconButton(
              icon: Icon(Icons.date_range),
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now().add(
                    Duration(days: 1),
                  ),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(
                    Duration(days: 30),
                  ),
                );
              },
            ),
          ),
        ),
        DropdownButton(
          items: [
            DropdownMenuItem(
              value: 'low',
              child: Text('Low'),
            ),
          ],
          onChanged: (value) {},
          value: 'low',
        ),
        Query(
            options: QueryOptions(
              documentNode: GraphqlApiQuery().document,
            ),
            builder: (result, {refetch, fetchMore}) {
              if (result.hasException) {
                return SizedBox(
                  height: 50,
                  child: Text(result.exception.toString()),
                );
              }

              final allRequests =
                  GraphqlApi$Query.fromJson(result.data).requests;

              return ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 400),
                child: ListView.builder(
                  itemBuilder: (_, index) {
                    return ListTile(
                      title: Text(allRequests[index].title),
                      subtitle:
                          Text(allRequests[index].creationDate.toString()),
                    );
                  },
                  itemCount: allRequests.length,
                ),
              );
            }),
      ],
    );
  }
}
