import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:helppy/screen/home/search_field.dart';

import '../../Colors/color.dart';
import '../../Colors/size.dart';

import '../../sevices/utils.dart';
import 'circle_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Column(
          children: const [AppBar(), Body()],
        ),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
   List<String> doctor = [
    'assets/images/doctor1.jpeg',
    'assets/images/doctor2.jpeg',
    'assets/images/doctor3.jpeg',
    'assets/images/doctor2.jpeg',
    'assets/images/doctor3.jpeg',
  ];
   List<String> hospital = [
    'assets/images/hospital1.jpeg',
    'assets/images/hospital2.jpeg',
    
  ];
  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).screenSize;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Doctor",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "See All",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: kPrimaryColor),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.22,
          width: size.width * 1,
          child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
              scrollDirection: Axis.horizontal,
              itemCount: doctor.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 5),
                            width: size.width * 0.45,
                            height: size.height * 0.2,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(doctor[index]),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                width: 2,
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
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hospital",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "See All",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: kPrimaryColor),
                ),
              ),
            ],
          ),
        ),
         SizedBox(
              height: size.height * 0.25,
              width: size.width * 1,
              child: ListView.builder(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                  scrollDirection: Axis.horizontal,
                  itemCount: hospital.length,
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
                                        image: AssetImage(hospital[index]),
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
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 0, 0, 0),
            blurRadius: 4,
            offset: Offset(2, 4), // Shadow position
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 0.5],
          colors: [
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 241, 241, 241),
          ],
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/Ceo.jpg"),
                ),
              ),
              Text(
                "Hello Sounthon,\nGood Morning",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              CircleButton(
                icon: Icons.notifications,
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const SearchTextField()
        ],
      ),
    );
  }
}
