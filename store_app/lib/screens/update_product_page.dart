import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product_service.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_field.dart';

class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({super.key});

  static String id = 'UpdateProduct';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, description, image;
  String? price;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product = ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Update Product',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 150),
                CustomTextField(
                  hint: 'Product Name',
                  onChanged: (data) {
                    productName = data;
                  },
                ),
                SizedBox(height: 20),
                CustomTextField(
                  hint: 'Description',
                  onChanged: (data) {
                    description = data;
                  },
                ),
                SizedBox(height: 20),
                CustomTextField(
                  hint: 'Price',
                  onChanged: (data) {
                    price = data;
                  },
                  inputType: TextInputType.number,
                ),
                SizedBox(height: 20),
                CustomTextField(
                  hint: 'Image',
                  onChanged: (data) {
                    image = data;
                  },
                ),
                SizedBox(height: 50),
                CustomButton(
                  text: 'Update',
                  onTap: () async {
                    setState(() {
                      isLoading = true;
                    });
                    try {
                      await updateProduct(product);
                      print('success');
                    } catch (e) {
                      print(e.toString());
                    }
                    setState(() {
                      isLoading = false;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    await UpdateProductService().updateProduct(
      id: product.id,
      title: productName == null ? product.title : productName!,
      price: price == null ? product.price : price!,
      description: description == null ? product.description : description!,
      image: image == null ? product.image : image!,
      category: product.category,
    );
  }
}
