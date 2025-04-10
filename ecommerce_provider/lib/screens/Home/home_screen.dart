// import 'package:ecommerce_provider/Model/product_model.dart';
// import 'package:ecommerce_provider/constraints.dart';
// import 'package:ecommerce_provider/screens/Home/Widgets/product_cart.dart';
// import 'package:flutter/material.dart';
//
// import 'Widgets/categories.dart';
// import 'Widgets/home_app_bar.dart';
// import 'Widgets/image_slider.dart';
// import 'Widgets/search_bar.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   int currentSlider = 0;
//   int selectedIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 20),
//               CustomAppBar(),
//               SizedBox(height: 14),
//               MySearchBar(),
//               SizedBox(height: 14),
//
//               ImageSlider(
//                 currentSlide: currentSlider,
//                 onChange: (value) {
//                   setState(() {
//                     currentSlider = value;
//                   });
//                 },
//               ),
//               SizedBox(height: 20),
//
//               Categories(),
//               SizedBox(height: 5),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Special For You',
//                     style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
//                   ),
//
//                   Text('See all', style: TextStyle(fontSize: 16)),
//                 ],
//               ),
//               GridView.builder(
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   childAspectRatio: 0.66,
//                   crossAxisSpacing: 20,
//                   mainAxisSpacing: 20,
//                 ),
//                 itemCount: all.length,
//                 itemBuilder: (context, index) {
//                   return ProductCard(product: all[index]);
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// // import '../../Model/product_model.dart';
// import '../../Model/product_model.dart';
// import 'Widgets/categories.dart';
// import 'Widgets/home_app_bar.dart';
// import 'Widgets/image_slider.dart';
// import 'Widgets/product_cart.dart';
// import 'Widgets/search_bar.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   int currentSlider = 0;
//   int selectedIndex = 0;
//
//   // Define product lists for each category
//   final List<Product> allProducts = all; // All products
//   final List<Product> shoesProducts = shoes; // Shoes
//   final List<Product> beautyProducts = beauty; // Beauty
//   final List<Product> womensFashionProducts = womenFashion; // Women's Fashion
//   final List<Product> jewelryProducts = jewelry; // Jewelry
//   final List<Product> mensFashionProducts = menFashion; // Men's Fashion
//
//   // Function to get the appropriate product list based on the selected category index
//   List<Product> _getProductsForCategory(int index) {
//     switch (index) {
//       case 0:
//         return allProducts; // Show all products for index 0
//       case 1:
//         return shoesProducts; // Show shoes for index 1
//       case 2:
//         return beautyProducts; // Show beauty products for index 2
//       case 3:
//         return womensFashionProducts; // Show women's fashion for index 3
//       case 4:
//         return jewelryProducts; // Show jewelry products for index 4
//       case 5:
//         return mensFashionProducts; // Show men's fashion for index 5
//       default:
//         return allProducts; // Default to all products if no category is selected
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     List<Product> productsToDisplay = _getProductsForCategory(selectedIndex);
//
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 20),
//               CustomAppBar(),
//               SizedBox(height: 14),
//               MySearchBar(),
//               SizedBox(height: 14),
//
//               ImageSlider(
//                 currentSlide: currentSlider,
//                 onChange: (value) {
//                   setState(() {
//                     currentSlider = value;
//                   });
//                 },
//               ),
//               SizedBox(height: 20),
//
//               Categories(
//                 _onCategoryTap: (index) {
//                   setState(() {
//                     selectedIndex = index;
//                   });
//                 },
//               ),
//               SizedBox(height: 5),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Special For You',
//                     style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
//                   ),
//                   Text('See all', style: TextStyle(fontSize: 16)),
//                 ],
//               ),
//               // GridView for the selected category
//               GridView.builder(
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   childAspectRatio: 0.66,
//                   crossAxisSpacing: 20,
//                   mainAxisSpacing: 20,
//                 ),
//                 itemCount: productsToDisplay.length,
//                 itemBuilder: (context, index) {
//                   return ProductCard(product: productsToDisplay[index]);
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Model/product_model.dart';
import 'Widgets/categories.dart';
import 'Widgets/home_app_bar.dart';
import 'Widgets/image_slider.dart';
import 'Widgets/product_cart.dart';
import 'Widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;
  int selectedIndex = 0;

  // Define product lists for each category
  final List<Product> allProducts = all; // All products
  final List<Product> shoesProducts = shoes; // Shoes
  final List<Product> beautyProducts = beauty; // Beauty
  final List<Product> womensFashionProducts = womenFashion; // Women's Fashion
  final List<Product> jewelryProducts = jewelry; // Jewelry
  final List<Product> mensFashionProducts = menFashion; // Men's Fashion

  // Function to get the appropriate product list based on the selected category index
  List<Product> _getProductsForCategory(int index) {
    switch (index) {
      case 0:
        return allProducts; // Show all products for index 0
      case 1:
        return shoesProducts; // Show shoes for index 1
      case 2:
        return beautyProducts; // Show beauty products for index 2
      case 3:
        return womensFashionProducts; // Show women's fashion for index 3
      case 4:
        return jewelryProducts; // Show jewelry products for index 4
      case 5:
        return mensFashionProducts; // Show men's fashion for index 5
      default:
        return allProducts; // Default to all products if no category is selected
    }
  }

  void _onCategoryTap(int index, BuildContext context) {
    setState(() {
      selectedIndex = index;
    });
    // You can handle any additional logic here when a category is tapped
  }

  @override
  Widget build(BuildContext context) {
    List<Product> productsToDisplay = _getProductsForCategory(selectedIndex);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              CustomAppBar(),
              SizedBox(height: 14),
              MySearchBar(),
              SizedBox(height: 14),

              ImageSlider(
                currentSlide: currentSlider,
                onChange: (value) {
                  setState(() {
                    currentSlider = value;
                  });
                },
              ),
              SizedBox(height: 20),

              // Pass the _onCategoryTap function to the Categories widget
              Categories(onCategoryTap: _onCategoryTap),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Special For You',
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                  Text('See all', style: TextStyle(fontSize: 16)),
                ],
              ),
              // GridView for the selected category
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.66,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: productsToDisplay.length,
                itemBuilder: (context, index) {
                  return ProductCard(product: productsToDisplay[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
