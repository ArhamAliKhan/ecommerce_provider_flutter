// // import 'package:ecommerce_provider/Model/category.dart';
// // import 'package:flutter/material.dart';
// //
// // class Categories extends StatelessWidget {
// //   const Categories({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return SizedBox(
// //       height: 130,
// //       child: ListView.separated(
// //         scrollDirection: Axis.horizontal,
// //         itemCount: categoryList.length,
// //
// //         itemBuilder: (context, index) {
// //           return Column(
// //             children: [
// //               Container(
// //                 height: 65,
// //                 width: 65,
// //                 decoration: BoxDecoration(
// //                   shape: BoxShape.circle,
// //                   image: DecorationImage(
// //                     image: AssetImage(categoryList[index].image),
// //                     fit: BoxFit.cover,
// //                   ),
// //                 ),
// //               ),
// //               SizedBox(height: 5),
// //               Text(
// //                 categoryList[index].title,
// //                 style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
// //               ),
// //             ],
// //           );
// //         },
// //         separatorBuilder: (context, index) => SizedBox(width: 20),
// //       ),
// //     );
// //   }
// // }
//
// import 'package:ecommerce_provider/Model/category.dart';
// import 'package:flutter/material.dart';
//
// class Categories extends StatefulWidget {
//   const Categories({super.key});
//
//   @override
//   _CategoriesState createState() => _CategoriesState();
// }
//
// class _CategoriesState extends State<Categories> {
//   // Default selected category index is 0
//   int _selectedIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 130,
//       child: ListView.separated(
//         scrollDirection: Axis.horizontal,
//         itemCount: categoryList.length,
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             onTap: () {
//               setState(() {
//                 // Update the selected index when a category is tapped
//                 _selectedIndex = index;
//               });
//               // Handle the tap action for the selected category
//               _onCategoryTap(index, context);
//             },
//             child: Column(
//               children: [
//                 Container(
//                   height: 65,
//                   width: 65,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     image: DecorationImage(
//                       image: AssetImage(categoryList[index].image),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 5),
//                 Text(
//                   categoryList[index].title,
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.bold,
//                     color:
//                         _selectedIndex == index
//                             ? Colors
//                                 .blue // Change color for the selected category
//                             : Colors.black,
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//         separatorBuilder: (context, index) => SizedBox(width: 20),
//       ),
//     );
//   }
//
//   void _onCategoryTap(int index, BuildContext context) {
//     // You can use the index to filter the product list or change views
//     String categoryTitle = categoryList[index].title;
//     print('Category tapped: $categoryTitle');
//
//     // Example: Navigating to a new screen or updating product data based on category
//     // You can update your provider or call a function to fetch products of this category
//   }
// }

import 'package:ecommerce_provider/Model/category.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  final Function(int, BuildContext) onCategoryTap;

  const Categories({super.key, required this.onCategoryTap});

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
              // Pass the callback to the parent
              widget.onCategoryTap(index, context);
            },
            child: Column(
              children: [
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(categoryList[index].image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  categoryList[index].title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color:
                        _selectedIndex == index
                            ? Colors
                                .blue // Change color for the selected category
                            : Colors.black,
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: 20),
      ),
    );
  }
}
