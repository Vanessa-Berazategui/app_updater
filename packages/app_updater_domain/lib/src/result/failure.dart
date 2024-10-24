part of 'result.dart';

@freezed
sealed class Failure with _$Failure {
  const factory Failure.server({
    required String message,
    int? code,
  }) = _FailureServer;

  const factory Failure.unauthorized(String message) = _FailureUnauthorized;

  const factory Failure.unexpected(Object e) = _FailureUnexpected;

  const factory Failure.connectTimeout() = _FailureConnectTimeOut;

  const factory Failure.sendTimeout() = _FailureSendTimeOut;

  const factory Failure.receiveTimeout() = _FailureReceiveTimeout;

  const factory Failure.noConnection() = _FailureNoConnection;

  const factory Failure.cache() = _FailureCache;

  const factory Failure.ota({
    required String message,
  }) = _FailureOTA;

  factory Failure.fromJson(Map<String, dynamic> json) =>
      _$FailureFromJson(json);
}

extension FailureX on Failure {
  String get errorMessage => map(
        server: (server) => server.message,
        unauthorized: (unauthorized) => unauthorized.message,
        unexpected: (unexpected) => unexpected.e.toString(),
        connectTimeout: (connectTimeout) => 'Connect Timeout error',
        sendTimeout: (sendTimeout) => 'Send Timeout error',
        receiveTimeout: (receiveTimeout) => 'Receive Timeout error',
        noConnection: (noConnection) => 'No connection available',
        cache: (cache) => 'Cache error',
        ota: (ota) => 'Failed to make OTA update ${ota.message}',
      );
}
