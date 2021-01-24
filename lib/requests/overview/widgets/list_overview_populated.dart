import 'package:flutter/material.dart';
import 'package:requests/data/graphql/graphql_api.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:requests/requests/overview/request_detail_page.dart';

const priorities = ["LOW", "MEDIUM", "HIGH"];

class ListOverviewPopulated extends StatelessWidget {
  final List<OpenRequests$Query$Requests> requests;
  final OpenRequests$Query$UserStatistics userStatistics;

  const ListOverviewPopulated({
    Key key,
    @required this.requests,
    @required this.userStatistics,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                  left: 40,
                  bottom: 45,
                ),
                child: Container(
                  height: 150,
                  width: 400,
                  color: Color(0xaafff2c8),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 18, left: 230, right: 12, bottom: 24),
                child: Image.asset("assets/overview-background.png"),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24, top: 18),
                    child: Text(
                      'Good afternoon,',
                      style: Theme.of(context).textTheme.headline1.copyWith(
                          fontWeight: FontWeight.w300, color: Colors.black87),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text('Daniel',
                        style: Theme.of(context).textTheme.headline1.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, top: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(userStatistics.hoursDone.round().toString(),
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87)),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, bottom: 6),
                          child: Text('hours done',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  .copyWith(
                                      fontSize: 12, color: Colors.black87)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, top: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(userStatistics.hoursPlanned.round().toString(),
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87)),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, bottom: 6),
                          child: Text('hours planned',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  .copyWith(
                                      fontSize: 12, color: Colors.black87)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          GroupedListView<OpenRequests$Query$Requests, String>(
            elements: requests,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            groupBy: (elem) => groupName(elem.priority),
            groupComparator: (a, b) =>
                priorities.indexOf(a) - priorities.indexOf(b),
            order: GroupedListOrder.DESC,
            groupSeparatorBuilder: (String group) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Container(
                color: groupColor(group),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24.0, vertical: 5),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        /*child: Icon(
                                              group == "HIGH"
                                                  ? Icons.priority_high
                                                  : group == "MEDIUM"
                                                      ? Icons.hdr_strong
                                                      : Icons.hdr_weak,*/
                        child: Image.asset(
                          group == "HIGH"
                              ? "assets/high-importance-icon.png"
                              : group == "MEDIUM"
                                  ? "assets/medium-importance-icon.png"
                                  : "assets/low-importance-icon.png",
                          width: 35,
                        ),
                      ),
                      Text(
                        group,
                        style: Theme.of(context).textTheme.caption.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                      ),
                    ],
                  ),
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
                  /*       tileColor: daysLeft < 0
                                        ? Colors.pink.withAlpha(75)
                                        : daysLeft < 3
                                            ? Colors.deepOrange.withAlpha(25)
                                            : Colors.transparent,*/
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
                  subtitle: Text("estimation: ${request.timeEstimation} h"),
                  trailing: Stack(
                    alignment: Alignment.center,
                    children: [
                      if (request.dueDate.compareTo(DateTime.now()) > 0)
                        TweenAnimationBuilder<double>(
                          duration: Duration(milliseconds: 1600),
                          curve: Curves.easeOutCubic,
                          tween: Tween<double>(
                            begin: 1.0,
                            end: request.dueDate
                                    .difference(DateTime.now())
                                    .inMilliseconds /
                                request.dueDate
                                    .difference(request.creationDate)
                                    .inMilliseconds,
                          ),
                          builder: (context, value, _) =>
                              CircularProgressIndicator(
                            value: value,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                groupColor(groupName(request.priority))
                                    .withAlpha(255)),
                          ),
                        ),
                      if (request.dueDate.compareTo(DateTime.now()) <= 0)
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: groupColor(groupName(request.priority))
                                .withAlpha(255),
                          ),
                          height: 40,
                          width: 40,
                        ),
                      Text(
                        "$daysLeft d",
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color:
                                  request.dueDate.compareTo(DateTime.now()) <= 0
                                      ? Colors.white
                                      : Colors.black,
                            ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Color groupColor(String group) => Color(group == "HIGH"
      ? 0x44e91e63
      : group == "MEDIUM"
          ? 0x33ffc107
          : 0x2200acdc);

  String groupName(Priority priority) =>
      priority.toString().replaceAll("Priority.", "").toUpperCase();
}
