// import 'package:ecommerce_provider/constraints.dart';
// import 'package:flutter/material.dart';
//
// class DetailAppBar extends StatefulWidget {
//   const DetailAppBar({super.key});
//
//   @override
//   State<DetailAppBar> createState() => _DetailAppBarState();
// }
//
// class _DetailAppBarState extends State<DetailAppBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(10),
//       child: Row(
//         children: [
//           IconButton(
//             style: IconButton.styleFrom(backgroundColor: Colors.white),
//             padding: EdgeInsets.all(15),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: Icon(Icons.arrow_back_ios),
//           ),
//           Spacer(),
//           IconButton(
//             style: IconButton.styleFrom(backgroundColor: Colors.white),
//             padding: EdgeInsets.all(15),
//             onPressed: () {},
//             icon: Icon(Icons.share_outlined),
//           ),
//           SizedBox(width: 10),
//           IconButton(
//             style: IconButton.styleFrom(backgroundColor: Colors.white),
//             padding: EdgeInsets.all(15),
//             onPressed: () {},
//             icon: Icon(Icons.favorite),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../Model/product_model.dart';
import '../../../Provider/favorite_provider.dart';

class DetailAppBar extends StatefulWidget {
  final Product product;

  const DetailAppBar({super.key, required this.product});

  @override
  State<DetailAppBar> createState() => _DetailAppBarState();
}

class _DetailAppBarState extends State<DetailAppBar> {
  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteProvider>(context);
    final isFavorite = favoriteProvider.isFavorite(widget.product);

    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            style: IconButton.styleFrom(backgroundColor: Colors.white),
            padding: EdgeInsets.all(15),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          Spacer(),
          IconButton(
            style: IconButton.styleFrom(backgroundColor: Colors.white),
            padding: EdgeInsets.all(15),
            onPressed: () {
              // Share functionality here
            },
            icon: Icon(Icons.share_outlined),
          ),
          SizedBox(width: 10),
          IconButton(
            style: IconButton.styleFrom(backgroundColor: Colors.white),
            padding: EdgeInsets.all(15),
            onPressed: () {
              favoriteProvider.toggleFavorite(widget.product);
            },
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.red : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
