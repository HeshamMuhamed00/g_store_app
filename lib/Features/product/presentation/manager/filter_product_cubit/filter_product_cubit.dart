import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:g_store_app/Features/product/data/models/product/product.model.dart';
import 'package:g_store_app/Features/product/data/repo/product_repo.dart';

part 'filter_product_state.dart';

class FilterProductCubit extends Cubit<FilterProductState> {
  FilterProductCubit(this.productRepo) : super(FilterProductInitial());

  final ProductRepo productRepo;

  Future<void> filterProduct() async {
    emit(FilterProductLoading());

    var result = await productRepo.fetchProduct();

    result.fold((failuer) {
      emit(FilterProductFailure(failuer.errMessage));
    }, (products) {
      filterProduct();
      emit(
        FilterProductSucsses(products),
      );
    });
  }
}
