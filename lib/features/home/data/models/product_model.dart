
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_model.g.dart';
@JsonSerializable()
class ProductModel {
  final dynamic id;
  final String title;
  final dynamic price;
  final String description;
  final String image;
  final RatingModel? rating;
  final String category;
  ProductModel(
      {required this.id,
        required this.title,
        required this.category,
        required this.price,
        required this.description,
        required this.image,
        required this.rating});

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
@JsonSerializable()
class RatingModel {
  final dynamic rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);
}