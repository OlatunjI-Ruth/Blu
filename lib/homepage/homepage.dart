import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as Badges;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButtonCustom(
          color: Color(0XFF6448F6),
          icon: Icon(
              Icons.document_scanner_outlined,
              color: Colors.white),
        ),
        title: Text(
          'Welcome',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Badges.Badge(
                  badgeStyle: Badges.BadgeStyle(badgeColor: Colors.red),
                  position: Badges.BadgePosition.custom(end: 15.0),
                  child: IconButtonCustom(
                    color: Colors.white,
                    icon: Icon(
                      Icons.notifications_none_outlined,
                      color: Colors.black,
                      // size: 25.0,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
        Row(
          children: [],
        )
          ],
        ),
      ),
    );
  }
}

class IconButtonCustom extends StatelessWidget {
   IconButtonCustom({
    super.key, this.color, this.icon
  });
final Color? color;
final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right:10,),
      child: Ink(
        decoration: ShapeDecoration(
          color: color,
          shape: CircleBorder(),
        ),
        child: IconButton(
            splashRadius: 20.0,
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: icon!
            ),
      ),
    );
  }
}

