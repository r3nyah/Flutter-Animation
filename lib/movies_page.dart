import 'package:animation/detail_page.dart';
import 'package:flutter/material.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const SizedBox(height: 50,),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    title: 'Naruto Shippudden',
                    imageUrl:
                    'https://awsimages.detik.net.id/community/media/visual/2020/07/13/manga-naruto-1_43.webp',
                    tag: "1",
                  ),
                ),
              ); //Navigator Push
            },
            child: Row(
              children: [
                Hero(
                  tag: '1',
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://awsimages.detik.net.id/community/media/visual/2020/07/13/manga-naruto-1_43.webp',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Expanded(
                  child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    title: 'Batman',
                    imageUrl: 'https://awsimages.detik.net.id/community/media/visual/2022/01/06/the-batman.png?w=700&q=90',
                    tag: "2",
                  ),
                ),
              );
            },
            child: Row(
              children: [
                Hero(
                  tag: "2",
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://awsimages.detik.net.id/community/media/visual/2022/01/06/the-batman.png?w=700&q=90'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Expanded(
                  child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
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
