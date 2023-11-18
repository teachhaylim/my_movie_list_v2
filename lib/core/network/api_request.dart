import "package:dio/dio.dart";
import "package:flutter/foundation.dart";
import "package:my_movie_list_v2/core/network/api_interceptor.dart";
import "package:pretty_dio_logger/pretty_dio_logger.dart";

var options = BaseOptions(
  baseUrl: "", //TODO: update api url
  connectTimeout: const Duration(seconds: 60),
  receiveTimeout: const Duration(seconds: 60),
  sendTimeout: const Duration(seconds: 60),
  contentType: "application/json",
);

final dioLogger = PrettyDioLogger(
  request: kDebugMode,
  requestHeader: kDebugMode,
  requestBody: kDebugMode,
  responseBody: kDebugMode,
  responseHeader: kDebugMode,
  error: kDebugMode,
  compact: true,
  maxWidth: 150,
);

Dio dio = Dio(options)
  ..interceptors.add(ApiInterceptor())
  ..interceptors.add(dioLogger);
