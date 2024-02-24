import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:g_store_app/Features/product/data/models/product/product.model.dart';
import 'package:g_store_app/Features/product/data/repo/product_repo.dart';

part 'product_cubit_state.dart';

class ProductCubit extends Cubit<ProductCubitState> {
  ProductCubit(this.productRepo) : super(ProductCubitInitial());

  final ProductRepo productRepo;

  Future<void> fetchProduct() async {
    emit(ProductCubitLoading());

    var result = await productRepo.fetchProduct();

    result.fold((failuer) {
      emit(ProductCubitFailure(failuer.errMessage));
    }, (products) {
      emit(
        ProductCubitSucsses(products),
      );
    });
  }
}
