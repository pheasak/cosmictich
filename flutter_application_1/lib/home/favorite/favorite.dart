import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class favoritePage extends StatelessWidget {
  const favoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.grey[100]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Icon(
                Icons.menu,
                size: 30,
              ),
              const Spacer(),
              const Icon(
                Icons.share,
                size: 30,
              ),
              const SizedBox(
                width: 20,
              ),
              const Icon(
                Icons.shopping_bag,
                size: 30,
              )
            ],
          ),
        ),
      ),
      Column(
          children: List.generate(Listfavorite.lsfa.length, (index) {
        return Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 170,
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 150,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                          image:
                              NetworkImage(Listfavorite.lsfa[index].proimage),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(Listfavorite.lsfa[index].proname,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text(
                          Listfavorite.lsfa[index].rete,
                          style: const TextStyle(fontSize: 17),
                        ),
                        Text(
                          '[${Listfavorite.lsfa[index].review}\rreviews]',
                          style: const TextStyle(fontSize: 17, color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Container(
                      height: 20,
                      width: 250,
                      child: Row(
                        children: [
                          Text(
                            '\$ ${Listfavorite.lsfa[index].pri}',
                            style: const TextStyle(fontSize: 20, color: Colors.amber),
                          ),
                          const Spacer(),
                          LikeButton(
                            likeBuilder: (isLiked) {
                              return Icon(
                                isLiked
                                    ? Icons.favorite
                                    : Icons.favorite_border_outlined,
                                color: isLiked ? Colors.pinkAccent : null,
                              );
                            },
                            likeCount:
                                int.parse(Listfavorite.lsfa[index].liked),
                            countPostion: CountPostion.left,
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ));
      }))
    ])));
  }
}

class Listfavorite {
  final String proimage, proname, liked, rete, review;
  final double pri;
  Listfavorite(
      {required this.liked,
      required this.pri,
      required this.proimage,
      required this.proname,
      required this.rete,
      required this.review});
  static List<Listfavorite> lsfa = [];
}
