import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_firebase/feature/server_communication/server_error.dart';

part 'server_result.freezed.dart';

@freezed
class ServerResult<E> with _$ServerResult{

  const factory ServerResult.success({required E entity}) = _SuccessServerResult;
  const factory ServerResult.failed({required List<ServerError> errors}) = _FailedServerResult;
}