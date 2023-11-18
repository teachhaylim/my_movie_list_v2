import "dart:io";

import "package:dio/dio.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:my_movie_list_v2/core/network/network_status.dart";

part "custom_error.freezed.dart";

@freezed
class CustomError with _$CustomError {
  CustomError._();

  factory CustomError({
    @Default(-1) int statusCode,
    required String message,
  }) = _CustomError;

  static CustomError get unauthenticated => CustomError(statusCode: StatusCode.requiredAuthentication, message: StatusMessage.requiredAuthentication);

  static CustomError get noInternetConnection => CustomError(statusCode: StatusCode.noInternetConnection, message: StatusMessage.noInternetConnection);

  static CustomError parseDioError({required DioException error}) {
    String message = StatusMessage.unknownError;
    int statusCode = StatusCode.unknownError;

    try {
      switch (error.type) {
        case DioExceptionType.badResponse:
          message = error.response?.data["message"] ?? StatusMessage.unknownError;
          statusCode = error.response?.statusCode ?? StatusCode.unknownError;
          break;
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.sendTimeout:
          message = StatusMessage.timeout;
          statusCode = StatusCode.timeout;
          break;
        case DioExceptionType.cancel:
          final lvError = error.response?.data as CustomError?;
          message = lvError?.message ?? StatusMessage.unknownError;
          statusCode = lvError?.statusCode ?? StatusCode.unknownError;
          break;
        default:
          message = error.error is SocketException ? StatusMessage.socketError : StatusMessage.unknownError;
          statusCode = StatusCode.unknownError;
          break;
      }
    } catch (e) {
      statusCode = StatusCode.somethingWentWrong;
      message = e.toString();
    }

    return CustomError(
      statusCode: statusCode,
      message: message,
    );
  }
}
