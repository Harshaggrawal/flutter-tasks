import 'package:flutter/material.dart';
import 'package:flutter_application_2/e_commerce_using%20getx/cart_controller.dart';
import 'package:get/get.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('user cart'),
      ),
      body: GetX<CartController>(builder: ((controller) {
        return Column(
          children: [
            SizedBox(
              height: 500,
              child: ListView.builder(
                  itemCount: controller.selectedProducts.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.network(
                          controller.selectedProducts[index].imageUrl),
                      title:
                          Text(controller.selectedProducts[index].productName),
                      subtitle: Text(
                          controller.selectedProducts[index].price.toString()),
                          trailing: ElevatedButton(
                            onPressed: (){
                              controller.removeProductsFromCart(controller.selectedProducts[index]);
                            }, child: const Icon(Icons.remove),));
                    
                  }),
            ),
            const SizedBox(height: 10,),
            Text('total price: Rs. ${controller.totalCost}',
            style: const TextStyle(fontSize: 30.0),)
          ],
        );
      })),
    );
  }
}
