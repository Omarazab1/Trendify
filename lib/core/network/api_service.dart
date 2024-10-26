
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:trendify/features/home/data/models/product_model.dart';
import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService{

  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(ApiConstants.getAllProducts)
  Future<ProductModel> getAllProducts();

}