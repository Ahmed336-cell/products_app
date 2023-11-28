import 'package:flutter/material.dart';
import 'package:products_app/products_model.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  ProductDetailsScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: product.images.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    product.images[index],
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Brand:',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  product.brand,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Divider(
                  height: 20,
                ),
                Text(
                  'Description:',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  product.description,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Divider(
                  height: 20,
                ),
                Text(
                  "Rating: ",
                  style: TextStyle(fontSize: 18, color: Colors.white60),
                ),
                RatingBar.builder(
                  initialRating: product.rating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 20,
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    // Handle rating update if needed
                    print(rating);
                  },
                ),
                Divider(
                  height: 20,
                ),
                Text(
                  'Price: ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white),
                ),
                Text(
                  "\$${product.price}",
                  style: TextStyle(fontSize: 20, color: Colors.white60),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
