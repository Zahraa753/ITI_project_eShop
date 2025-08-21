import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/products_pages/API_model.dart';
import 'package:flutter_application_1/products_pages/API_provider.dart';
import 'package:meta/meta.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(ProductsInitial()) {
    getallProduct();
  }

  late ApiModel productModelAPI;

  Future<void> getallProduct() async {
    try {
      emit(ProductsLoading());

      productModelAPI = await ApiProvider().getProducts();
      emit(ProductsSuccess(productModelAPI));
    } catch (e) {
      emit(ProductsError(e.toString()));
    }
  }

  Future<void> getProductsByCategory(String category) async {
    try {
      emit(ProductsLoading());
      productModelAPI = await ApiProvider().getProductsByCategory(category);
      emit(ProductsSuccess(productModelAPI));
    } catch (e) {
      emit(ProductsError(e.toString()));
    }
  }
}
