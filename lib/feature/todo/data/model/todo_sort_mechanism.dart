/// Sort mechanism
abstract class TodoSortMechanism {
  final bool _descending;

  /// Public constructor
  const TodoSortMechanism(bool descending) : _descending = descending;

  /// Sorting data by fieldName
  String get fieldName;

  /// Define a descending order or not
  bool get descending => _descending;
}

/// Sort mechanism by deadline
class DeadlineDateSortMechanism extends TodoSortMechanism {

  /// Public constructor
  const DeadlineDateSortMechanism(super.descending);

  @override
  String get fieldName => "deadlineDate";
}

/// Sort mechanism by create todo date
class CreateDateSortMechanism extends TodoSortMechanism {
  /// Public constructor
  const CreateDateSortMechanism(super.descending);

  @override
  String get fieldName => "createDate";
}

/// Sort mechanism by completion status of todo
class CompleteSortMechanism extends TodoSortMechanism {

  /// Public constructor
  /// We provide here true, because we want to appear 
  /// planned earlier, than completed
  /// 
  /// - {P}LANNED
  /// - {C}OMPLETED
  /// 
  /// {C} is earlier alphabetically than {P}, so we
  /// need to reverse it in sort
  const CompleteSortMechanism() : super(true);


  @override
  String get fieldName => "todoStatus";
}
