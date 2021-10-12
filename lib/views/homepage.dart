import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    List<int> list = [1, 2, 3];

    final List<String> imgList = [
      'https://api.rsiazainab.co.id/api/v1/gambar/lihat_gambar/a26ffecb-714a-4967-88d2-9783c5f4cc5c',
      'https://api.rsiazainab.co.id/api/v1/gambar/lihat_gambar/eecc1976-d2f3-4666-af69-3f9b38baaad4',
      'https://api.rsiazainab.co.id/api/v1/gambar/lihat_gambar/eecc1976-d2f3-4666-af69-3f9b38baaad4'
    ];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            " Home ",
            style: TextStyle(color: Colors.green),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  // decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //         image: AssetImage("assets/pattern_bg.jpg"),
                  //         fit: BoxFit.cover)),
                  height: mediaQueryHeight * 0.3,
                  width: MediaQuery.of(context).size.width,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                    ),
                    items: imgList
                        .map((item) => Container(
                              child: Center(
                                  child: Image.network(item,
                                      fit: BoxFit.cover, width: 1000)),
                            ))
                        .toList(),
                  )),
              Container(
                  height: mediaQueryHeight * 0.7,
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: [
                      //1
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            print("Menu Satu di klik");
                          },
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Icon(
                                  Icons.summarize,
                                  color: Colors.green,
                                  size: 40,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                const Text("Laporan Status",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25))
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xff2c274c),
                                  Color(0xff46426c),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ),
                      //2
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            print('menu 2');
                          },
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                // ignore: prefer_const_constructors
                                Icon(
                                  Icons.apartment,
                                  size: 40,
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                const Text("Data Gedung",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25)),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xff2c274c),
                                  Color(0xff46426c),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ),
                      //3
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            print('menu 3');
                          },
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                // ignore: prefer_const_constructors
                                Icon(
                                  Icons.router,
                                  size: 40,
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                const Text("Data Perangkat",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25)),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xff2c274c),
                                  Color(0xff46426c),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ),
                      //4
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            print('menu 4');
                          },
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                // ignore: prefer_const_constructors
                                Icon(
                                  Icons.people,
                                  size: 40,
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                const Text("Data Pengguna",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25)),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xff2c274c),
                                  Color(0xff46426c),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}
