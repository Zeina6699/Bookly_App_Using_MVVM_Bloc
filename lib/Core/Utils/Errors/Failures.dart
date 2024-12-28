import 'package:dio/dio.dart';

abstract class Failures {
  final String errorMessage;

  Failures(this.errorMessage);
}

class ServerFailures extends Failures{
  ServerFailures(super.errorMessage);

  factory ServerFailures.fromDioError(DioException dioError){
switch(dioError.type) {

  case DioExceptionType.connectionTimeout:
       return ServerFailures("Connection TimeOut with ApiServer");

  case DioExceptionType.sendTimeout:
       return ServerFailures("Send TimeOut with ApiServer");

  case DioExceptionType.receiveTimeout:
      return ServerFailures("Receive TimeOut with ApiServer");

  case DioExceptionType.badCertificate:
    // TODO: Handle this case.
  case DioExceptionType.badResponse:
    return ServerFailures.fromResponse(dioError.response!.statusCode,dioError.response!.data);
 
  case DioExceptionType.cancel:    
    return ServerFailures("Request to ApiServer was Cancled");

  case DioExceptionType.connectionError:
    // TODO: Handle this case.
  case DioExceptionType.unknown:
    if(dioError.message!.contains("SocketException")){
      return ServerFailures("No Internet Connection");
    }
    return ServerFailures("UnExpected Error,PleaseTry again !");

default: return ServerFailures("Ooops There was An Error, PleaseTry again !")  ;
}

  }
  factory ServerFailures.fromResponse(int? statusCode,dynamic response){
if(statusCode==400||statusCode==401||statusCode==403){return ServerFailures(response['error']['message']);}
else if(statusCode==404){return ServerFailures("Your Request Not Found, Try again Later !");}
else if(statusCode==500){return ServerFailures("Internal Server Error, Try again Later !");}
else{return ServerFailures("Ooops There was An Error, PleaseTry again !");}
  }
  
}