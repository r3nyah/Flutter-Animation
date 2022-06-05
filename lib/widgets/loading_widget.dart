import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Shimmer.fromColors(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.grey,
                ),
              baseColor: Colors.grey,
              highlightColor: Colors.white,
              period: const Duration(
                milliseconds: 500,
              ),
            ),
          ),
          const SizedBox(width: 20,),
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  width: 500,
                  height: 20.0,
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: Colors.white,
                    child: Container(
                      width: 200,
                      height: 100,
                      color: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 500,
                  height: 20.0,
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: Colors.white,
                    child: Container(
                      width: 200,
                      height: 100,
                      color: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 500,
                  height: 20.0,
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: Colors.white,
                    child: Container(
                      width: 200,
                      height: 100,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}