import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_result.freezed.dart';

@freezed
class NetworkResult<T> with _$NetworkResult<T> {
  const NetworkResult._(); // Private constructor for freezed

  const factory NetworkResult.success(T data) = Success<T>;
  const factory NetworkResult.failure(String error) = Failure<T>;
}
