// Dart imports:
import 'dart:developer';

// Package imports:
import 'package:dio/dio.dart';
// Project imports:
import 'package:app_updater_data/src/exceptions/exceptions.dart';
import 'package:app_updater_data/src/types.dart';
import 'package:flutter_ddd_skeleton_monorepo_domain/flutter_ddd_skeleton_monorepo_domain.dart';

extension ErrorHandler on BaseRepository {
  Future<Result<T>> process<T>({
    required ActionCallback<T> action,
  }) async {
    try {
      final data = await action();

      return Result.success(data);
      // ignore: avoid_catching_errors
    } on TypeError {
      rethrow;
    } on CacheException {
      return Result.failure(const Failure.cache());
    } on QuizException {
      return Result.failure(const Failure.quiz());
    } on DioException catch (e) {
      log(e.runtimeType.toString(), name: runtimeType.toString());
      log(e.toString(), name: runtimeType.toString());

      /// Timeout in milliseconds for opening  url.
      /// It is a requestTimeout.
      /// The timeout is applied on the request generated by httpClient.
      if (e.type == DioExceptionType.connectionTimeout) {
        return Result.failure(const Failure.connectTimeout());
      }

      /// It occurs when url is sent timeout.
      if (e.type == DioExceptionType.sendTimeout) {
        return Result.failure(const Failure.sendTimeout());
      }

      ///  Whenever more than [receiveTimeout] (in milliseconds) passes between
      ///  two events from response stream,
      ///  [Dio] will throw the [DioError] with [DioErrorType.RECEIVE_TIMEOUT].
      ///  Note: This is not the receiving time limitation.
      if (e.type == DioExceptionType.receiveTimeout) {
        return Result.failure(const Failure.receiveTimeout());
      }

      final response = e.response?.data as Map<String, dynamic>?;

      final message = (response?['message'] as String?) ?? e.message;
      final code = response?['code'] as int? ?? e.response?.statusCode;

      return Result.failure(
        Failure.server(
          message: message ?? 'Unknown error',
          code: code,
        ),
      );
    } catch (e) {
      log(e.runtimeType.toString(), name: runtimeType.toString());
      log(e.toString(), name: runtimeType.toString());

      return Result.failure(Failure.unexpected(e));
    }
  }
}
