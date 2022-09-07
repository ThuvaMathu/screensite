import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppDrawer extends ConsumerWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(18),
                  child: Image.asset(
                    "../assets/amlcloudlogodark_removebg_crop.png",
                  ),
                ),
              )),
          ListTile(
            title: const Text('Search'),
            onTap: () {
              Navigator.of(context).pushNamed('search');
              //Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Lists'),
            onTap: () {
              Navigator.of(context).pushNamed('lists');
              //Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
