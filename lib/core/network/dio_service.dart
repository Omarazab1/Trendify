// import 'package:dio/dio.dart';
// import 'package:simpleapp/core/api/api_service.dart';
// import 'package:simpleapp/core/api/dio_interceptors.dart';
// import 'package:simpleapp/core/api/endpoints.dart';
// import 'package:simpleapp/core/errors/Exceptions.dart';
//
//
// class DioService extends ApiService{
//   final Dio dio;
//
//   DioService({required this.dio}){
//      dio.options.baseUrl = EndPoints.baseUrl;
//      dio.interceptors.add(DioInterceptors());
//      dio.interceptors.add(LogInterceptor(
//        requestBody: true,
//        responseBody: true,
//        requestHeader: true,
//        error: true,
//        request: true,
//      ));
//   }
//   @override
//   Future delete(String path, {dynamic data, Map<String, dynamic>? queryParameters,isFormData=false}) async {
//     try {
//       final response = await dio.delete(
//           path,
//           data: isFormData ? FormData.fromMap(data) : data,
//           queryParameters: queryParameters);
//       return response.data;
//     } on DioException catch (e) {
//       handleDioExceptions(e);
//     }
//
//   }
//
//   @override
//   Future patch(String path, {dynamic data, Map<String, dynamic>? queryParameters,isFormData=false}) async {
//     try {
//       final response = await dio.patch(path,
//           data: isFormData ? FormData.fromMap(data) : data,
//           queryParameters: queryParameters);
//       return response.data;
//     } on DioException catch (e) {
//       handleDioExceptions(e);
//     }
//   }
//
//   @override
//   Future post(String path, {dynamic data, Map<String, dynamic>? queryParameters , isFormData=false}) async {
//     try {
//       final response = await dio.post(path,
//           data: isFormData ? FormData.fromMap(data) : data,
//           queryParameters: queryParameters);
//       return response.data;
//     } on DioException catch (e) {
//       handleDioExceptions(e);
//     }
//   }
//
//   @override
//   Future get(String path, {dynamic data, Map<String, dynamic>? queryParameters, bool isFormData = false}) async {
//     try {
//       final response = await dio.get(
//           path,
//           data: isFormData ? FormData.fromMap(data) : data,
//           queryParameters: queryParameters);
//       return response.data;
//     } on DioException catch (e) {
//       handleDioExceptions(e);
//     }
//   }
//
//
//
// }