import 'package:flutter/material.dart';
import 'package:http_demo/models/product.dart';

class ProductListRowWidget extends StatelessWidget{
  Product product;
  ProductListRowWidget(this.product);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return buildProductItemCard(context);
  }

  Widget buildProductItemCard(BuildContext context) {
    return InkWell(
      child: Card(
        child: Column(
          children: [
            Container(
              child: Image.network("https://cdn.pixabay.com/photo/2014/05/02/21/50/home-office-336377_1280.jpg"),
              height: 130.0,
              width: MediaQuery.of(context).size.width/2,
            ),
            Text(product.productName),
            Text(product.unitPrice.toString() + " TL", style: TextStyle(fontSize: 18.0, color: Colors.grey),),
          ],
        ),
      ),
    );
  }
  
}