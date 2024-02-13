part of 'product_cubit_cubit.dart';

sealed class ProductCubitState extends Equatable {
  const ProductCubitState();

  @override
  List<Object> get props => [];
}

final class ProductCubitInitial extends ProductCubitState {}

final class ProductCubitLoading extends ProductCubitState {}

final class ProductCubitSucsses extends ProductCubitState {
  final List<ProductModel> products;

  const ProductCubitSucsses(this.products);
}

final class ProductCubitFailure extends ProductCubitState {
  final String errrMessage;

  const ProductCubitFailure(this.errrMessage);
}
