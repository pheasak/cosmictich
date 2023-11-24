import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/ListPopular.dart';
import 'package:flutter_application_1/home/categories/listcate.dart';
import 'package:flutter_application_1/home/favorite/favorite.dart';
import 'package:flutter_application_1/home/listslide/slide.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:like_button/like_button.dart';

class homePageCST extends StatefulWidget {
  const homePageCST({super.key});

  @override
  State<homePageCST> createState() => _homePageCSTState();
}

class _homePageCSTState extends State<homePageCST> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blueGrey[900],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 250,
                      // decoration: BoxDecoration(color: Colors.amber),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search',
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            hintStyle: const TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(25))),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      height: 50,
                      width: 80,
                      child: Row(
                        children: [
                          Icon(
                            Icons.shopping_cart_sharp,
                            size: 30,
                            color: Colors.grey[400],
                          ),
                          const SizedBox(width: 10),
                          Icon(
                            Icons.favorite,
                            size: 30,
                            color: Colors.grey[400],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ImageSlideshow(
                  isLoop: true,
                  autoPlayInterval: 2000,
                  children: List.generate(SlideImage.lsSlimage.length, (index) {
                    return Container(
                      height: 220,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(
                                SlideImage.lsSlimage[index].imagesl),
                            fit: BoxFit.cover),
                      ),
                    );
                  }),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey[800],
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.bottomCenter,
                        height: 100,
                        width: 90,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(
                              Icons.language_sharp,
                              size: 40,
                              color: Colors.amber,
                            ),
                            const Expanded(
                                child: Text(
                              'WORLDWIDE CULT FAVS',
                              style: TextStyle(color: Colors.white),
                            ))
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        height: 100,
                        width: 110,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(
                              Icons.thumb_up_alt_outlined,
                              size: 40,
                              color: Colors.blue,
                            ),
                            const Expanded(
                                child: Text(
                              'RECOMMENDATION NETWORK',
                              style: TextStyle(color: Colors.white),
                            ))
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        height: 100,
                        width: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(
                              Icons.security,
                              size: 40,
                              color: Colors.green,
                            ),
                            const Expanded(
                                child: Text(
                              '          100% AUTHENTIC',
                              style: TextStyle(color: Colors.white),
                            ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Categories',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  height: 220,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(categories.lscategories.length,
                          (index) {
                        return Container(
                          height: 220,
                          width: 250,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 135,
                                width: 250,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            categories.lscategories[index].pic),
                                        fit: BoxFit.cover),
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        topRight: Radius.circular(12))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5, top: 5),
                                child: Text(
                                  categories.lscategories[index].title,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5, top: 0),
                                child: Text(
                                  categories.lscategories[index].subtitle,
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey[400]),
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Popular product',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: List.generate(popularproduct.lspro.length, (index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 10),
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
                                    image: NetworkImage(
                                        popularproduct.lspro[index].product),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(popularproduct.lspro[index].namepro,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Text(
                                    popularproduct.lspro[index].rate,
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  Text(
                                    '[${popularproduct.lspro[index].viewer}\rreviews]',
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.grey),
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
                                      '\$ ${popularproduct.lspro[index].price}',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.amber),
                                    ),
                                    const Spacer(),
                                    LikeButton(
                                      likeBuilder: (isLiked) {
                                        return Center(
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                Listfavorite(
                                                    liked: popularproduct
                                                        .lspro[index].like,
                                                    pri: popularproduct
                                                        .lspro[index].price,
                                                    proimage: popularproduct
                                                        .lspro[index].product,
                                                    proname: popularproduct
                                                        .lspro[index].namepro,
                                                    rete: popularproduct
                                                        .lspro[index].rate,
                                                    review: popularproduct
                                                        .lspro[index].viewer);
                                              });
                                            },
                                            child: Icon(
                                              isLiked
                                                  ? Icons.favorite
                                                  : Icons
                                                      .favorite_border_outlined,
                                              color: isLiked
                                                  ? Colors.pinkAccent
                                                  : null,
                                            ),
                                          ),
                                        );
                                      },
                                      likeCount: int.parse(
                                          popularproduct.lspro[index].like),
                                      countPostion: CountPostion.left,
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
