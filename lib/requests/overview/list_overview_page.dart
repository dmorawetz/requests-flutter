import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:requests/data/graphql/graphql_api.dart';
import 'package:requests/requests/creation/creation_page.dart';
import 'package:requests/requests/overview/request_detail_page.dart';

const priorities = ["LOW", "MEDIUM", "HIGH"];

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
                child: RefreshIndicator(
                  onRefresh: () async {
                    print('refresh');
                    await Future.delayed(Duration(seconds: 1));
                    await refetch();
                  },
                  child: CircularProgressIndicator(),
                ),
              );
            }

            final allRequests = GraphqlApi$Query.fromJson(result.data).requests
              ..sort((a, b) => a.dueDate.compareTo(b.dueDate));

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
                  groupComparator: (a, b) =>
                      priorities.indexOf(a) - priorities.indexOf(b),
                  order: GroupedListOrder.DESC,
                  groupSeparatorBuilder: (String group) => Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        group,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                  ),
                  itemBuilder: (context, request) {
                    final daysLeft =
                        request.dueDate.difference(DateTime.now()).inDays;
                    return Dismissible(
                      key: UniqueKey(),
                      background: Container(
                        color: Colors.green,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 18,
                            ),
                            Icon(
                              Icons.done,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      secondaryBackground: Container(
                        color: Colors.pink,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.clear,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                          ],
                        ),
                      ),
                      child: ListTile(
                        title: Text(
                          request.title,
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        tileColor: daysLeft < 0
                            ? Colors.pink.withAlpha(75)
                            : daysLeft < 3
                                ? Colors.deepOrange.withAlpha(25)
                                : Colors.transparent,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RequestDetailPage(
                                        request: request,
                                      )));
                        },
                        leading: Icon(
                          request.status == Status.done
                              ? Icons.assignment_turned_in
                              : request.status == Status.working
                                  ? Icons.assignment_outlined
                                  : Icons.fiber_new,
                        ),
                        subtitle:
                            Text("estimation: ${request.timeEstimation} h"),
                        trailing: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                          child: Text(
                            "$daysLeft d",
                          ),
                        ),
                      ),
                    );
                  },
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
