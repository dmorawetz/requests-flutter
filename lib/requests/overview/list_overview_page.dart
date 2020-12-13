import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:requests/data/graphql/graphql_api.dart';
import 'package:requests/requests/creation/creation_page.dart';

class RequestsListOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Open Requests"),
      ),
      body: Query(
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

            if (result.loading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            final allRequests = GraphqlApi$Query.fromJson(result.data).requests;

            return Container(
              child: RefreshIndicator(
                onRefresh: () async {
                  print('refresh');
                  await Future.delayed(Duration(seconds: 1));
                  await refetch();
                },
                child: GroupedListView<GraphqlApi$Query$Requests, String>(
                  elements: allRequests,
                  physics: AlwaysScrollableScrollPhysics(),
                  groupBy: (elem) => elem.priority
                      .toString()
                      .replaceAll("Priority.", "")
                      .toUpperCase(),
                  groupSeparatorBuilder: (String group) => Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        group,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                  ),
                  itemBuilder: (context, request) => ListTile(
                    title: Text(
                      request.title,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    leading: Icon(
                      request.status == Status.done
                          ? Icons.assignment_turned_in
                          : request.status == Status.working
                              ? Icons.assignment_outlined
                              : Icons.fiber_new,
                    ),
                    subtitle: Text("estimation: ${request.timeEstimation} h"),
                    trailing: Text(
                        "${request.dueDate.difference(DateTime.now()).inDays} d"),
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CreationPage()));
        },
        child: Icon(Icons.add),
        tooltip: 'Add request',
      ),
    );
  }
}
