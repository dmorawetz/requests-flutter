import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:requests/data/models/RequestModel.dart';
import 'package:requests/requests/creation/bloc/request_form_event.dart';
import 'package:requests/requests/creation/bloc/request_form_state.dart';
import 'package:requests/data/graphql/graphql_api.dart';
import 'package:http/http.dart' as http;

class RequestFormBloc extends Bloc<RequestFormEvent, RequestFormState> {
  final GraphQLClient graphQLClient;

  RequestFormBloc(this.graphQLClient, OpenRequests$Query$Requests request)
      : super(RequestFormState.initial(request != null
            ? RequestModel.fromGraphql(request)
            : RequestModel(
                dueDate: DateTime.now().add(Duration(days: 7)),
              )));

  @override
  Stream<RequestFormState> mapEventToState(RequestFormEvent event) async* {
    print(event);

    yield* event.map(
      save: save,
      changeEstimation: (ChangeEstimation value) async* {
        yield RequestFormState.timeEstimationChanged(
            state.req.copyWith(timeEstimation: value.hours));
      },
      changeDate: (ChangeDate value) async* {
        yield RequestFormState.dateChanged(
            state.req.copyWith(dueDate: value.date));
      },
      changeName: (ChangeName value) async* {
        yield RequestFormState.nameChanged(// TODO fix naming
            state.req.copyWith(title: value.name));
      },
      changeMail: (ChangeMail value) async* {
        yield RequestFormState.mailChanged(
            state.req.copyWith(creatorEmail: value.email));
      },
      changeDescription: (ChangeDescription value) async* {
        yield RequestFormState.descriptionChanged(
            state.req.copyWith(description: value.description));
      },
      changePriority: (ChangePriority value) async* {
        yield RequestFormState.priorityChanged(
            state.req.copyWith(priority: value.priority));
      },
      uploadImage: uploadImage,
    );
  }

  Stream<RequestFormState> save(Save s) async* {
    // TODO differentiate between create or edit

    final result = await graphQLClient.mutate(MutationOptions(
        documentNode: NewRequestMutation(
          variables: NewRequestArguments(
            request: state.toInput(),
          ),
        ).document,
        variables: {
          "request": state.toInput(),
        }));

    if (result.hasException) {
      yield RequestFormState.error(state.req, result.exception.toString());
    } else {
      yield RequestFormState.saved(state.req);
    }
  }

  Stream<RequestFormState> uploadImage(UploadImage s) async* {
    var result = await graphQLClient.query(
      QueryOptions(
        documentNode: SignedUploadQuery().document,
      ),
    );

    if (result.hasException) {
      yield RequestFormState.error(state.req, result.exception.toString());
      return;
    }
    var data = SignedUpload$Query.fromJson(result.data);

    var response = await http.put(data.signedUpload.uploadUrl,
        body: File(s.path).readAsBytesSync());

    if (response.statusCode != 200) {
      yield RequestFormState.error(state.req, "image upload failed");
      return;
    }

    yield RequestFormState.imagesChanged(state.req.copyWith(attachments: {
      ...state.req.attachments,
      ...{data.signedUpload.objectName: data.signedUpload.fileUrl},
    }));
  }
}
