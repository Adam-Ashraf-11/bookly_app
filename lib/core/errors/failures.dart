import 'package:dio/dio.dart';

abstract class Failures {
  final String? errormessage;

  Failures(this.errormessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errormessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('connection timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('connection timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('connection timeout with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure('request to Api was canceld');

      case DioExceptionType.connectionError:
        return ServerFailure('connection Error');

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        } {}
        return ServerFailure('Unexpected Error');
        default: return ServerFailure('Opps There was an Error, please try later!');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found , please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('internal Server error, please try later!');
    } else {
      return ServerFailure('Opps There was an Error, please try later!');
    }
  }
}
