import 'package:equatable/equatable.dart';

import 'rating.dart';

class ProductModel extends Equatable {
  final int? id;
  final String? title;
  final double? price;
  final String? description;
  final String? category;
  final String? image;
  final Rating? rating;

  const ProductModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json['id'] as int?,
        title: json['title'] as String?,
        price: (json['price'] as num?)?.toDouble(),
        description: json['description'] as String?,
        category: json['category'] as String?,
        image: json['image'] as String?,
        rating: json['rating'] == null ? null : Rating.fromJson(json['rating']),
      );

  List<dynamic> toJson() => [
        id,
        title,
        price,
        description,
        category,
        image,
        rating?.toJson(),
      ];

  @override
  List<dynamic> get props {
    return [
      id,
      title,
      price,
      description,
      category,
      image,
      rating,
    ];
  }
}
