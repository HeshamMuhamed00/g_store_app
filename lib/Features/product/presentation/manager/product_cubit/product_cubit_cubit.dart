import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:g_store_app/Features/product/data/models/product_model/product_model.dart';
import 'package:g_store_app/Features/product/data/repo/product_repo.dart';

part 'product_cubit_state.dart';

class ProductCubitCubit extends Cubit<ProductCubitState> {
  ProductCubitCubit(this.productRepo) : super(ProductCubitInitial());

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
