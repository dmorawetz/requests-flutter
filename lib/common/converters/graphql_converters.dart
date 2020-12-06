DateTime fromGraphQLDateTimeToDartDateTime(String date) => DateTime.parse(date);

String fromDartDateTimeToGraphQLDateTime(DateTime date) =>
    date.toIso8601String();
