
import 'package:flutter/material.dart';
import 'package:helppy/Colors/theme_data.dart';
import 'package:helppy/provider/dark_theme_provider.dart';
import 'package:helppy/screen/btn_bar.dart';
import 'package:helppy/screen/splash/splash_screen.dart';

// import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  DarkThemePovider themeChangeProvider = DarkThemePovider();

  void getCurrentAppTheme() async {
    themeChangeProvider.setDarkTheme =
        await themeChangeProvider.darkThemePrefs.getTheme();
  }

  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
   
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_){
          return themeChangeProvider;
        })
      ],
      child: Consumer<DarkThemePovider>(
        builder: (context, themeProvider, child) {
          
          return MaterialApp(
            title: 'Flutter Demo',
            theme: Styles.themeData(themeProvider.getDarkTheme, context),
            home: SplashScreen() ,
            debugShowCheckedModeBanner: false,
          );
        }
      ),
    );
  }
}
