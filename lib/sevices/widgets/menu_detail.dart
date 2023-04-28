import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:helppy/screen/btn_bar.dart';

class MenuDetails extends StatelessWidget {
  const MenuDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var buy;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        title: const Text('AppBar'),
        leading: IconButton(
          onPressed: () {  Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  const BottomBarScreen()));},
          icon: const Icon(Icons.arrow_back,color: Colors.black,),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(IconlyBold.bag,color: Colors.black,),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert,color: Colors.black,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextButton(
                onPressed: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 2,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Image.asset('assets/images/aloha.jpeg'),
                      ),
                      const Text(
                        'ເດີ່ນເຕະບານ',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Padding(
                            padding: const EdgeInsets.fromLTRB(30, 8, 0, 5),
                            child: Text(
                              'ຍັງວ່າງ',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 8, 0, 5),
                            child: Container(
                                width: 50,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    width: 2,
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    '7-8',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 8, 0, 5),
                            child: Container(
                                width: 60,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    width: 2,
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    '10-11',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 2,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Image.asset('assets/images/aloha.jpeg'),
                      ),
                      const Text(
                        'ເດີ່ນເຕະບານ',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Padding(
                            padding: const EdgeInsets.fromLTRB(30, 8, 0, 5),
                            child: Text(
                              'ຍັງວ່າງ',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 8, 0, 5),
                            child: Container(
                                width: 50,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    width: 2,
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    '7-8',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 8, 0, 5),
                            child: Container(
                                width: 60,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    width: 2,
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    '10-11',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 2,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Image.asset('assets/images/aloha.jpeg'),
                      ),
                      const Text(
                        'ເດີ່ນເຕະບານ',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Padding(
                            padding: const EdgeInsets.fromLTRB(30, 8, 0, 5),
                            child: Text(
                              'ຍັງວ່າງ',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 8, 0, 5),
                            child: Container(
                                width: 50,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    width: 2,
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    '7-8',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 8, 0, 5),
                            child: Container(
                                width: 60,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    width: 2,
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    '10-11',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 2,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Image.asset('assets/images/aloha.jpeg'),
                      ),
                      const Text(
                        'ເດີ່ນເຕະບານ',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Padding(
                            padding: const EdgeInsets.fromLTRB(30, 8, 0, 5),
                            child: Text(
                              'ຍັງວ່າງ',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 8, 0, 5),
                            child: Container(
                                width: 50,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    width: 2,
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    '7-8',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 8, 0, 5),
                            child: Container(
                                width: 60,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    width: 2,
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    '10-11',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 2,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Image.asset('assets/images/aloha.jpeg'),
                      ),
                      const Text(
                        'ເດີ່ນເຕະບານ',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Padding(
                            padding: const EdgeInsets.fromLTRB(30, 8, 0, 5),
                            child: Text(
                              'ຍັງວ່າງ',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 8, 0, 5),
                            child: Container(
                                width: 50,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    width: 2,
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    '7-8',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 8, 0, 5),
                            child: Container(
                                width: 60,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    width: 2,
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    '10-11',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
