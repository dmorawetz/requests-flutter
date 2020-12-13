import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:requests/common/widgets/radio_list_dialog.dart';
import 'package:requests/data/graphql/graphql_api.dart';
import 'package:requests/requests/creation/bloc/request_form_bloc.dart';
import 'package:requests/requests/creation/bloc/request_form_event.dart';
import 'package:requests/requests/creation/bloc/request_form_state.dart';

class RequestForm extends StatelessWidget {
  final double _horizontalSpacing = 20;
  final TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 5,
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: BlocBuilder<RequestFormBloc, RequestFormState>(
            buildWhen: (old, next) => next.maybeMap(
              nameChanged: (_) => true,
              orElse: () => false,
            ),
            builder: (context, state) => TextFormField(
              onChanged: (val) {
                BlocProvider.of<RequestFormBloc>(context)
                    .add(RequestFormEvent.changeName(val));
              },
              validator: requiredValidator,
              initialValue: state.req.creator,
              decoration: InputDecoration(
                hintText: 'Name',
                filled: kIsWeb,
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.notes),
          title: BlocBuilder<RequestFormBloc, RequestFormState>(
            buildWhen: (old, next) => next.maybeMap(
              descriptionChanged: (_) => true,
              orElse: () => false,
            ),
            builder: (context, state) => TextFormField(
              onChanged: (val) {
                BlocProvider.of<RequestFormBloc>(context)
                    .add(RequestFormEvent.changeDescription(val));
              },
              minLines: 1,
              maxLines: 25,
              validator: requiredValidator,
              decoration: InputDecoration(
                hintText: 'Description',
                filled: kIsWeb,
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.date_range),
          onTap: () async {
            var dueDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now().add(
                Duration(days: 1),
              ),
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(
                Duration(days: 30),
              ),
            );
            BlocProvider.of<RequestFormBloc>(context)
                .add(RequestFormEvent.changeDate(dueDate));
          },
          title: BlocBuilder<RequestFormBloc, RequestFormState>(
            buildWhen: (old, next) => next.maybeMap(
              dateChanged: (_) => true,
              orElse: () => false,
            ),
            builder: (context, state) {
              dateController.text = state.req.dueDate.toString().split(" ")[0];
              return TextFormField(
                onChanged: (val) {
                  BlocProvider.of<RequestFormBloc>(context)
                      .add(RequestFormEvent.changeDate(DateTime.parse(val)));
                },
                validator: requiredValidator,
                controller: dateController,
                decoration: InputDecoration(
                  hintText: 'Date',
                  filled: kIsWeb,
                  border: InputBorder.none,
                ),
              );
            },
          ),
        ),
        Divider(),
        BlocBuilder<RequestFormBloc, RequestFormState>(
          buildWhen: (old, next) => next.maybeMap(
            priorityChanged: (_) => true,
            orElse: () => false,
          ),
          builder: (context, state) => ListTile(
            title: Text(state.req.priority != null
                ? state.req.priority
                    .toString()
                    .replaceAll("Priority.", "")
                    .toUpperCase()
                : "LOW"),
            leading: Icon(Icons.signal_cellular_alt),
            onTap: () {
              showDialog(
                context: context,
                builder: (innerContext) => RadioListDialog(
                  title: 'Priority',
                  initialValue: state.req.priority,
                  onValueChange: (val) {
                    BlocProvider.of<RequestFormBloc>(context)
                        .add(RequestFormEvent.changePriority(val));
                  },
                ),
              );
            },
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('Time estimation'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: _TimeEstimation(),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.camera_alt),
          title: Text('Add image'),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.mic),
          title: Text('Add audio'),
        ),
      ],
    );
  }
}

class _TimeEstimation extends StatelessWidget {
  const _TimeEstimation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RequestFormBloc, RequestFormState>(
      buildWhen: (prev, curr) => curr.maybeMap(
        timeEstimationChanged: (va) => true,
        orElse: () => false,
      ),
      builder: (context, state) => Wrap(
        direction: Axis.horizontal,
        spacing: 12,
        children:
            {0.5: '30 min', 1.0: '1 h', 2.0: '2 h', 24.0: '1 d', 30.0: 'longer'}
                .entries
                .map((e) => InputChip(
                      label: Text(e.value),
                      selected: state.req.timeEstimation == e.key,
                      onPressed: () {
                        BlocProvider.of<RequestFormBloc>(context)
                            .add(RequestFormEvent.changeEstimation(e.key));
                      },
                    ))
                .toList(),
      ),
    );
  }
}

String requiredValidator(String value) =>
    value.isEmpty ? 'Please enter something.' : null;
