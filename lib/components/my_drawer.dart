import 'package:animalide/components/my_list_tile.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  // void signOut() async {
  //   await FirebaseAuth.instance.signOut();
  // }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/complete.png',
                    width: 100,
                  ),
                ),
              ),
              MyListTile(
                  text: "Home",
                  icon: Icons.home,
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/dashboard');
                  }),
              MyListTile(
                  text: "Detect Animal",
                  icon: Icons.animation,
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/identify');
                  }),
              MyListTile(
                  text: "Animal analytics",
                  icon: Icons.analytics_outlined,
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/analytics");
                  }),
              MyListTile(
                  text: "My Animals",
                  icon: Icons.analytics_outlined,
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/analytics");
                  }),
              MyListTile(
                  text: "Record New Animal",
                  icon: Icons.animation,
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/identify');
                  }),
              MyListTile(
                  text: "User Profile",
                  icon: Icons.analytics_outlined,
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/analytics");
                  }),
              MyListTile(
                  text: "Settings",
                  icon: Icons.settings,
                  onTap: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
          // Padding(
          //   padding: const EdgeInsets.only(bottom: 40),
          //   child: MyListTile(
          //       text: "Logout",
          //       icon: Icons.logout,
          //       onTap: () {
          //         signOut;
          //         Navigator.pop(context);
          //       }),
          // ),
        ],
      ),
    );
  }
}
