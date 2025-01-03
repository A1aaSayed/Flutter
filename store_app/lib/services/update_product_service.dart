import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct({
    required String title,
    required double price,
    required String description,
    required String image,
    required String category,
    required int id,
  }) async {
    print('id = $id');
    Map<String, dynamic> newProduct = await Api().put(url: 'https://fakestoreapi.com/products/$id', body: {
      'title': title,
      'price': price.toString(),
      'description': description,
      'image': image,
      'category': category,
    });
    return ProductModel.fromJson(newProduct);
  }
}