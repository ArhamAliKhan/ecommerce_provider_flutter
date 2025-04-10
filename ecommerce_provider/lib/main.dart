import 'package:ecommerce_provider/Provider/cart_provider.dart';
import 'package:ecommerce_provider/Provider/favorite_provider.dart';
import 'package:ecommerce_provider/screens/nav_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(textTheme: GoogleFonts.mulishTextTheme()),
        home: BottomNavBar(),
      ),
    );
  }
}
