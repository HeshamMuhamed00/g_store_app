part of 'filter_product_cubit.dart';

sealed class FilterProductState extends Equatable {
  const FilterProductState();

  @override
  List<Object> get props => [];
}

final class FilterProductInitial extends FilterProductState {}

final class FilterProductLoading extends FilterProductState {}

final class FilterProductSucsses extends FilterProductState {
  final List<ProductModel> products;

  const FilterProductSucsses(this.products);
}

final class FilterProductFailure extends FilterProductState {
  final String errrMessage;

  const FilterProductFailure(this.errrMessage);
}
