import 'package:animation/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPage extends StatelessWidget {
  const ShimmerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: const[
          LoadingWidget(),
          LoadingWidget(),
          LoadingWidget(),
          LoadingWidget(),
        ],
      ),
    );
  }
}
