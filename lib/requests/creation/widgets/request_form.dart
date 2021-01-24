import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:requests/common/widgets/radio_list_dialog.dart';
import 'package:requests/data/graphql/graphql_api.dart';
import 'package:requests/requests/creation/bloc/request_form_bloc.dart';
import 'package:requests/requests/creation/bloc/request_form_event.dart';
import 'package:requests/requests/creation/bloc/request_form_state.dart';
import 'package:requests/requests/creation/creation_success_web_page.dart';
import 'package:requests/requests/creation/image_select_page.dart';

class RequestForm extends StatelessWidget {
  final TextEditingController dateController = TextEditingController();
  final bool isEdit;

  RequestForm({Key key, this.isEdit = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: kIsWeb ? 75 : 5,
        ),
        Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Image.asset(
                  isEdit
                      ? "assets/edit-request-background.png"
                      : "assets/new-request-background.png",
                  width: 280,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: kIsWeb ? mq.size.width / 2 - 100 : 98, top: 98),
              child: Text(
                isEdit ? 'Change\nyour\nrequest' : 'Launch a\nnew\nrequest',
                style: Theme.of(context).textTheme.headline1.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        ListTile(
          leading: Icon(Icons.flag),
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
              initialValue: state.req.title,
              decoration: InputDecoration(
                hintText: 'Title',
                filled: kIsWeb,
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        _Spacing(),
        if (kIsWeb)
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
                  hintText: 'Your name',
                  filled: kIsWeb,
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        if (kIsWeb) _Spacing(),
        if (kIsWeb)
          ListTile(
            leading: Icon(Icons.mail),
            title: BlocBuilder<RequestFormBloc, RequestFormState>(
              buildWhen: (old, next) => next.maybeMap(
                mailChanged: (_) => true,
                orElse: () => false,
              ),
              builder: (context, state) => TextFormField(
                onChanged: (val) {
                  BlocProvider.of<RequestFormBloc>(context)
                      .add(RequestFormEvent.changeMail(val));
                },
                validator: requiredValidator,
                initialValue: state.req.creatorEmail,
                decoration: InputDecoration(
                  hintText: 'Your email',
                  filled: kIsWeb,
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        if (kIsWeb) _Spacing(),
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
              initialValue: state.req.description,
            ),
          ),
        ),
        _Spacing(),
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
        _Spacing(),
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
        _Spacing(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('Time estimation'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: _TimeEstimation(),
        ),
        _Spacing(
          height: 20,
        ),
        ListTile(
          leading: Icon(Icons.camera_alt),
          title: Text('Add image'),
          onTap: () async {
            if (kIsWeb) return;
            Navigator.push(
              context,
              new MaterialPageRoute(
                builder: (context) => ImageSelectPage(),
              ),
            );
          },
        ),
        _Spacing(),
        ListTile(
          leading: Icon(Icons.mic),
          title: Text('Add audio'),
          onTap: () {
            if (kIsWeb) return;
          },
        ),
        SizedBox(
          height: 25,
        ),
        if (kIsWeb)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreationSuccessWebPage()));
              },
              textTheme: ButtonTextTheme.primary,
              color: Theme.of(context).primaryColor,
              padding: EdgeInsets.all(18.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.send),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Save request',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          )
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

class _Spacing extends StatelessWidget {
  final double height;

  const _Spacing({Key key, this.height = 7}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !kIsWeb
        ? Divider()
        : SizedBox(
            height: height,
          );
  }
}
