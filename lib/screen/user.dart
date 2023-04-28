import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';

import '../provider/dark_theme_provider.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  get color => null;

  @override
  Widget build(BuildContext context) {
    final ThemeState = Provider.of<DarkThemePovider>(context);

    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text:  const TextSpan(
                    text: 'Hi,  ',
                    style:TextStyle(
                        color: Colors.cyan,
                        fontSize: 27,
                        fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'MyName',
                          style: TextStyle(
                             color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w600))
                    ]),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 20,
              ),
              _listTiles(
                  title: 'Address 2',
                  subtitle: 'My subtitle',
                  icon: IconlyBold.activity,
                  onPressed: () {}),
              _listTiles(
                  title: 'Order', icon: IconlyBold.bag, onPressed: () {}),
              _listTiles(
                  title: 'Viewed', icon: IconlyBold.show, onPressed: () {}),
              _listTiles(
                  title: 'Forget Password',
                  icon: IconlyBold.unlock,
                  onPressed: () {}),
              SwitchListTile(
                title: Text('Theme'),
                secondary: Icon(ThemeState.getDarkTheme
                    ? Icons.dark_mode_outlined
                    : Icons.light_mode_outlined),
                onChanged: (bool value) {
                  ThemeState.setDarkTheme = value;
                },
                value: ThemeState.getDarkTheme,
              ),
              _listTiles(
                  title: 'Logout', icon: IconlyBold.logout, onPressed: () {}),
            ],
          ),
        ),
      ),
    ));
  }

  Widget _listTiles(
      {required String title,
      String? subtitle,
      required IconData icon,
      required Function onPressed}) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle == null ? "" : subtitle),
      leading: Icon(icon),
      trailing: const Icon(IconlyLight.arrowRight2),
      onTap: () {
        onPressed();
      },
    );
  }
}
