import 'package:freezed_annotation/freezed_annotation.dart';
part 'generic_failure.freezed.dart';

@freezed
class GenericFailure with _$GenericFailure{
  const factory GenericFailure.noInternet() = NoInternet;
  const factory GenericFailure.serverError() = ServerError;
  const factory GenericFailure.unknownError() = UnknownError;
  const factory GenericFailure.sessionExpired() = SessionExpired;
  const factory GenericFailure.generalError() = GeneralError;
}