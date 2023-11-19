import 'package:dio/dio.dart';

abstract class Failures {
  Failures(this.errMessage);
  final String errMessage;

  
}

class ServerFailure extends Failures {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {

      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Time Out');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Time Out');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Time Out');

      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate');

      case DioExceptionType.badResponse:
        return ServerFailure.fromBadRequest(dioException.response!.statusCode!, dioException.response);

      case DioExceptionType.cancel:
        return ServerFailure('Your Request Has Been Canceled');

      case DioExceptionType.connectionError:
        return ServerFailure('Your Connection Is Not Stable');

      case DioExceptionType.unknown:
        if(dioException.message!.contains('SocketException')){
          return ServerFailure('There is no connection');
        }
        else{
          return ServerFailure(dioException.message!);
        }
      default:
        return ServerFailure('Unknown error ');
    }
  }


  factory ServerFailure.fromBadRequest(int statusCode, dynamic response){
    if(statusCode == 400 ||statusCode == 401 ||statusCode == 403){
      return ServerFailure(response['error']['message']);
    }
    else if (statusCode == 404){
      return ServerFailure('Your request not found ');
    }
    else{
      return ServerFailure('Oop, Please Try again');
    }
  }
}
