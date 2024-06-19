import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_firebase/feature/server_communication/server_error.dart';

part 'server_result.freezed.dart';

/// Base server result, which has value
@freezed
class ServerResult<E> with _$ServerResult{

  /// Success result, we can get entity here
  const factory ServerResult.success({required E entity}) = _SuccessServerResult;

  /// Failed result, we can get only reason of fail here
  const factory ServerResult.failed({required ServerError error}) = _FailedServerResult;
}