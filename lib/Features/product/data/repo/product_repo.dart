import 'package:dartz/dartz.dart';
import 'package:g_store_app/Core/Errors/failure.dart';
import 'package:g_store_app/Features/product/data/models/product_model/product_model.dart';

abstract class ProductRepo {
  Future<Either<Failure, List<ProductModel>>> fetchProduct();
  Future<Either<Failure, List<ProductModel>>> fetchSearchProduct();
}
