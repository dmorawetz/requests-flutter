import 'package:flutter/material.dart';
import 'package:requests/data/graphql/graphql_api.dart';
import 'package:requests/requests/creation/creation_page.dart';

class RequestDetailPage extends StatelessWidget {
  final GraphqlApi$Query$Requests request;

  const RequestDetailPage({Key key, this.request}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(request.title),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CreationPage(request: request,)));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          if (request.description != null)
            ListTile(
              leading: Icon(Icons.notes),
              title: Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Text(
                    request.description,
                    maxLines: 20,
                  )),
            ),
          if (request.dueDate != null)
            ListTile(
              leading: Icon(Icons.date_range),
              title: Text(
                  "${request.dueDate.toString().split(" ")[0]} • ${request.dueDate.difference(DateTime.now()).inDays} day(s) left"),
            ),
          if (request.creator != null)
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                  "${request.creator.firstname} ${request.creator.lastname}"),
            ),
          if (request.creator != null)
            ListTile(
              leading: Icon(Icons.mail),
              title: Text(request.creator.email),
            ),
          if (request.status != null)
            ListTile(
              leading: Icon(
                request.status == Status.done
                    ? Icons.assignment_turned_in
                    : request.status == Status.working
                        ? Icons.assignment_outlined
                        : Icons.fiber_new,
              ),
              title: Text(request.status
                  .toString()
                  .replaceAll("Status.", "")
                  .toUpperCase()),
            ),
          if (request.priority != null)
            ListTile(
              leading: Icon(
                request.priority == Priority.high
                    ? Icons.priority_high
                    : request.priority == Priority.medium
                        ? Icons.lens
                        : Icons.lens_outlined,
              ),
              title: Text(request.priority
                  .toString()
                  .replaceAll("Priority.", "")
                  .toUpperCase()),
            ),
          if (request.timeEstimation != null)
            ListTile(
              leading: Icon(Icons.timer),
              title: Text("${request.timeEstimation} h est."),
            ),
          ListTile(
            leading: Icon(Icons.mic),
            title: Row(
              children: [
                Icon(Icons.play_arrow_rounded),
                Slider(
                  value: 0,
                  onChanged: (_) {},
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.image),
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Container(
                  color: Colors.black26,
                  height: 150,
                  child: Image.network(
                    "https://images.unsplash.com/photo-1608026689581-ebf7028fbf82?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
