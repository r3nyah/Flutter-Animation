import 'package:flutter/material.dart';
import 'package:animation/movies_page.dart';
import 'package:animation/shimmer/shimmer_page.dart';
import 'package:animation/splash/splash_page.dart';
import 'home_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}

//change the "home" to SplashPage() or ShimmerPage() or MoviesPage() if u wanna see difference between them
