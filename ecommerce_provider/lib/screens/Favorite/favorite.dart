import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Provider/favorite_provider.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the favorites list using Provider
    final favoriteProducts = Provider.of<FavoriteProvider>(context).favorites;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
        backgroundColor: Colors.blue,
      ),
      body:
          favoriteProducts.isEmpty
              ? const Center(
                child: Text(
                  'No favorites added yet!',
                  style: TextStyle(fontSize: 18),
                ),
              )
              : ListView.builder(
                itemCount: favoriteProducts.length,
                itemBuilder: (context, index) {
                  final product = favoriteProducts[index];
                  return ListTile(
                    leading: Image.asset(
                      product.image, // Assuming the product has an image path
                      width: 50,
                      height: 50,
                    ),
                    title: Text(product.title),
                    subtitle: Text('\$${product.price}'),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.remove_circle_outline,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        // Remove product from favorites
                        Provider.of<FavoriteProvider>(
                          context,
                          listen: false,
                        ).toggleFavorite(product);
                      },
                    ),
                  );
                },
              ),
    );
  }
}
