import 'package:flutter/material.dart';


import '../../size_config.dart';
import 'components/body.dart';

// ignore: use_key_in_widget_constructors
class SplashScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
