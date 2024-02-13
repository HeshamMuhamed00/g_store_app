import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:g_store_app/Core/Errors/failure.dart';
import 'package:g_store_app/Core/utils/api_service.dart';
import 'package:g_store_app/Features/product/data/models/product_model/product_model.dart';
import 'package:g_store_app/Features/product/data/repo/product_repo.dart';

class ProductRepoImpl implements ProductRepo {
  final ApiService apiService;

  ProductRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<ProductModel>>> fetchProduct() async {
    try {
      var data = await apiService.get(endPoint: 'products');

      List<ProductModel> products = [];

      products.add(
        ProductModel.fromJson(data),
      );
      return Right(products);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<ProductModel>>> fetchSearchProduct() {
    // TODO: implement fetchSearchProduct
    throw UnimplementedError();
  }
}
