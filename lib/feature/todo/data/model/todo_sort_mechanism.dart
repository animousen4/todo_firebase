abstract interface class TodoSortMechanism {
  String get fieldName;
  bool get descending;

}

class DeadlineDateSortMechanism implements TodoSortMechanism {

  const DeadlineDateSortMechanism(this._descending);

  final bool _descending;
  @override
  bool get descending => _descending;

  @override
  String get fieldName => "deadlineDate";

}

class CreateDateSortMechanism implements TodoSortMechanism {

  const CreateDateSortMechanism(this._descending);

  final bool _descending;

  @override
  bool get descending => _descending;

  @override
  String get fieldName => "createDate";

}

class CompleteSortMechanism implements TodoSortMechanism {

  const CompleteSortMechanism();

  @override
  bool get descending => true;

  @override
  String get fieldName => "todoStatus";

}

