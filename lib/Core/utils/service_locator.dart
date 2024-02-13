import 'package:dio/dio.dart';
import 'package:g_store_app/Core/utils/api_service.dart';
import 'package:g_store_app/Features/product/data/repo/product_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<ProductRepoImpl>(ProductRepoImpl(ApiService(Dio())));

  getIt.get<ApiService>();
}
