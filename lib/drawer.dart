import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppDrawer extends ConsumerWidget {
  const AppDrawer({Key? key}) : super(key: key);

  String getCurrentRouteName(context) {
    String currentRouteName = '';
    Navigator.popUntil(context, (route) {
      print('current rout1: ${route.settings.name}');
      if (route.settings.name != null) {
        currentRouteName = route.settings.name!;
      }
      return true;
    });
    return currentRouteName;
  }
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
   
      child: ListView(
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
            },
          ),
          ListTile(
            title: const Text('Lists'),
            onTap: () {
              Navigator.of(context).pushNamed('lists');
            },
          ),
        ],
      ),
    );
  }
}
