import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';

import 'package:card_swiper/card_swiper.dart';

import '../../screen/cart.dart';
import '../../screen/categories.dart';
import '../../screen/home/home_screen.dart';

import '../sevices/widgets/categories_widget.dart';
import '../utils.dart';
import 'menu_detail.dart';

class Testtoto extends StatefulWidget {
  const Testtoto({Key? key}) : super(key: key);

  @override
  State<Testtoto> createState() => _TesttotoState();
}

class _TesttotoState extends State<Testtoto> {
  final List<String> _offerImages = [
    'assets/images/offres/jonathan-petersson-ARU18GpF6QQ-unsplash.jpg',
  ];

  List<Color> gridColors = [
    const Color(0xff53B175),
    const Color(0xffF8A44c),
    const Color(0xffF7A593),
    const Color(0xffFDE598),
    const Color(0xffB7DFF5),
    const Color(0xff53B175),
  ];

  List<Map<String, dynamic>> toto = [
    {
      'imgPath':
          'assets/images/—Pngtree—football player silhouette_1797620.png',
      'catText': 'ຈອງເດີ່ນບານ',
    },
    {
      'imgPath': 'assets/images/pngwing.com (1).png',
      'catText': 'ຈອງເດີ່ນຕີດອກ',
    },
    {
      'imgPath': 'assets/images/pngwing.com.png',
      'catText': 'ຮ້ານຂາຍເຄື່ອງ',
    },
    {
      'imgPath': 'assets/images/pngwing.com.png',
      'catText': 'ຮ້ານຂາຍເຄື່ອງ',
    },
  ];
  List<String> entries = [
    'assets/images/pngwing.com (3).png',
    'assets/images/pngwing.com (3).png',
    'assets/images/pngwing.com (3).png',
    'assets/images/pngwing.com (3).png',
    'assets/images/pngwing.com (3).png',
    'assets/images/pngwing.com (3).png',
  ];
  List<int> colorCodes = <int>[600, 500, 100];

  List<String> news = [
    'assets/images/istockphoto-1141191007-612x612.jpg',
    'assets/images/istockphoto-1141191007-612x612.jpg',
    'assets/images/istockphoto-1141191007-612x612.jpg'
  ];

  final List<Map<String, dynamic>> tonoun = [
    {'page': const MenuDetails(), 'title': 'Home Screen'},
    {'page': CategoriesScreen(), 'title': 'Categories Screen'},
    {'page': const CartScreen(), 'title': 'Cart Screen'},
    {'page': const HomeScreen(), 'title': 'UserScreen'},
  ];

  @override
  Widget build(BuildContext context) {
    // final Utils utils = Utils(context);
    // final ThemeState = utils.getTheme;
    Size size = Utils(context).screenSize;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.25,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(
                    _offerImages[index],
                    fit: BoxFit.fill,
                  );
                },
                autoplay: true,
                itemCount: _offerImages.length,
                pagination: const SwiperPagination(
                    alignment: Alignment.bottomCenter,
                    builder: DotSwiperPaginationBuilder(
                        color: Colors.white, activeColor: Colors.red)),
                // control: SwiperController(color:Colors.amber),
              ),
            ),
            Row(
              children: const [
                Text(
                  'ບໍລິການທັງໝົດ',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: SizedBox(
                  height: size.height * 0.13,
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10),
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                  image: AssetImage(
                                      'assets/images/—Pngtree—football player silhouette_1797620.png'),width: 55,height: 55,),
                              Text(
                                "Home",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.home,
                                size: 50,
                                color: Color.fromARGB(255, 253, 251, 251),
                              ),
                              Text(
                                "Home",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.home,
                                size: 50,
                                color: Color.fromARGB(255, 253, 251, 251),
                              ),
                              Text(
                                "Home",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.home,
                                size: 50,
                                color: Color.fromARGB(255, 253, 251, 251),
                              ),
                              Text(
                                "Home",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
              child: Row(
                children: const [
                  Text(
                    'ເດີ່ນກິລາຍອດນິຍົມ',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.15,
              width: size.width * 1,
              child: ListView.builder(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                  scrollDirection: Axis.horizontal,
                  itemCount: entries.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 5),
                                width: size.width * 0.45,
                                height: size.height * 0.1,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(entries[index]),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    width: 2,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 8, right: 8),
                                child: Text(
                                  'ເດີ່ນເຟີລາລີ',
                                  style: TextStyle(fontSize: 15),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
              child: Row(
                children: const [
                  Text(
                    'ຂ່າວສານກິລາ',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.25,
              width: size.width * 1,
              child: ListView.builder(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                  scrollDirection: Axis.horizontal,
                  itemCount: news.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                  margin: const EdgeInsets.only(right: 5),
                                  width: size.width * 0.9,
                                  height: size.height * 0.21,
                                  // color: Colors.amber[colorCodes[index]],

                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(news[index]),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
