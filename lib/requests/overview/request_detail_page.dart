import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:requests/data/graphql/graphql_api.dart';
import 'package:requests/requests/creation/creation_page.dart';
import 'package:requests/requests/overview/bloc/list_overview_bloc.dart';
import 'package:requests/requests/overview/bloc/list_overview_event.dart';
import 'package:toggle_switch/toggle_switch.dart';

class RequestDetailPage extends StatefulWidget {
  final OpenRequests$Query$Requests request;
  final ListOverviewBloc bloc;

  const RequestDetailPage({Key key, this.request, @required this.bloc})
      : super(key: key);

  @override
  _RequestDetailPageState createState() => _RequestDetailPageState();
}

class _RequestDetailPageState extends State<RequestDetailPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.request.title),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CreationPage(
                            request: widget.request,
                          )));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          if (widget.request.description != null)
            ListTile(
              leading: Icon(Icons.notes),
              title: Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Text(
                    widget.request.description,
                    maxLines: 20,
                  )),
            ),
          if (widget.request.dueDate != null)
            ListTile(
              leading: Icon(Icons.date_range),
              title: Text(
                  "${widget.request.dueDate.toString().split(" ")[0]} • ${widget.request.dueDate.difference(DateTime.now()).inDays} day(s) left"),
            ),
          if (widget.request.creator != null)
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                  "${widget.request.creator.firstname} ${widget.request.creator.lastname}"),
            ),
          if (widget.request.creator != null)
            ListTile(
              leading: Icon(Icons.mail),
              title: Text(widget.request.creator.email),
            ),
          if (widget.request.status != null)
            ListTile(
              leading: Icon(Icons.hdr_strong),
              title: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  height: 50,
                  width: 200,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        index = (index + 1) % 3;
                      });
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 30,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12,
                          ),
                        ),
                        AnimatedPositioned(
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.pink,
                            ),
                          ),
                          curve: Curves.easeInOut,
                          duration: Duration(milliseconds: 200),
                          left: widget.request.status == Status.created
                              ? 0
                              : widget.request.status == Status.working
                                  ? 65
                                  : 150,
                        ),
                        Positioned(
                          child: IconButton(
                            onPressed: () {
                              widget.bloc.add(ListOverviewEvent.setStatus(
                                  widget.request, Status.created));
                              widget.request.status = Status.created;
                              setState(() {});
                            },
                            icon: Icon(
                              Icons.fiber_new,
                              color: widget.request.status == Status.created
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          left: 0,
                        ),
                        Positioned(
                          child: IconButton(
                            onPressed: () {
                              widget.bloc.add(ListOverviewEvent.setStatus(
                                  widget.request, Status.working));
                              widget.request.status = Status.working;
                              setState(() {});
                            },
                            icon: Icon(
                              Icons.assignment_outlined,
                              color: widget.request.status == Status.working
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          left: 65,
                        ),
                        Positioned(
                          child: IconButton(
                            onPressed: () {
                              widget.bloc.add(ListOverviewEvent.setStatus(
                                  widget.request, Status.done));
                              widget.request.status = Status.done;
                              setState(() {});
                            },
                            icon: Icon(
                              Icons.assignment_turned_in,
                              color: widget.request.status == Status.done
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          right: 0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          if (widget.request.priority != null)
            ListTile(
              leading: Icon(
                widget.request.priority == Priority.high
                    ? Icons.priority_high
                    : widget.request.priority == Priority.medium
                        ? Icons.lens
                        : Icons.lens_outlined,
              ),
              title: Text(widget.request.priority
                  .toString()
                  .replaceAll("Priority.", "")
                  .toUpperCase()),
            ),
          if (widget.request.timeEstimation != null)
            ListTile(
              leading: Icon(Icons.timer),
              title: Text("${widget.request.timeEstimation} h est."),
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
