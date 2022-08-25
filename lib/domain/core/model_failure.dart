import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_failure.freezed.dart';

@freezed
class ModelFailure with _$ModelFailure {
  const factory ModelFailure.network(String msg) = Network;
  const factory ModelFailure.unexpected(String msg) = Unexpected;
  const factory ModelFailure.insufficientPermission() = InsufficientPermission;
  const factory ModelFailure.exeptionWasNull() = ExeptionWasNull;
  const factory ModelFailure.jsonNull() = JsonNull;
  const factory ModelFailure.parsing(String msg) = Parsing;
  const factory ModelFailure.noData() = NoData;

  const ModelFailure._();
}
