import 'package:example/page/home_drawer.dart';
import 'package:example/screens/Covid.dart';
import 'package:example/screens/version.dart';
import 'package:flutter/material.dart';

import '../page/about.dart';

class drawers extends StatelessWidget {
  const drawers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.teal,
      child: Column(children: [
        const UserAccountsDrawerHeader(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/species.jpg"))),
          accountName: null,
          currentAccountPicture: null,
          accountEmail: null,
        ),
        const Divider(color: Colors.white, thickness: 1),
        ListTile(
          trailing: IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
              onPressed: () => {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => validations()))
                  }),
          title: Text(
            "Home",
            style: TextStyle(fontSize: 19, color: Colors.white),
          ),
        ),
        InkWell(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => version())),
          child: const ListTile(
            title: Text(
              "Version",
              style: TextStyle(fontSize: 19, color: Colors.white),
            ),
          ),
        ),
        const ListTile(
          title: Text(
            "Contact Us",
            style: TextStyle(fontSize: 19, color: Colors.white),
          ),
        ),
        InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Covid(),
                )),
            child: const ListTile(
              title: Text(
                "Covid-19",
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
            )),
        InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const about(),
                )),
            child: const ListTile(
              title: Text(
                "About",
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
            )),
      ]),
    );
  }
}
