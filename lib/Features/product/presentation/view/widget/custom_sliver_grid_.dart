import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:g_store_app/Core/widget/custom_error.dart';
import 'package:g_store_app/Core/widget/custom_loading_indicator.dart';
import 'package:g_store_app/Features/product/presentation/manager/product_cubit/product_cubit_cubit.dart';
import 'package:g_store_app/Features/product/presentation/view/widget/custom_product_item.dart';

class CustomSliverGrid extends StatelessWidget {
  const CustomSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductCubitState>(
      builder: (context, state) {
        if (state is ProductCubitSucsses) {
          return SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 0.5,
              mainAxisSpacing: 4,
              mainAxisExtent: 240,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return const CustomProductItem();
              },
              childCount: 30,
            ),
          );
        } else if (state is ProductCubitFailure) {
          return CustomError(errMessage: state.errrMessage);
        } else {
          return const CustomLodingIndicator();
        }
      },
    );
  }
}
