import 'package:flutter/material.dart';

class Detail2Page extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String tag;

  const Detail2Page({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: tag,
            child: Container(
              width: double.infinity,
              height: 150,
              padding: const EdgeInsets.only(
                top: 50,
                left: 20,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageUrl),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. '),
          const SizedBox(
            height: 20,
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              // color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}