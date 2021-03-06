import 'package:asmara_shop/consts/routes_strings.dart';
import 'package:asmara_shop/consts/strings.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({Key key})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; //

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      color: Colors.white,
      child: Container(
        height: 55,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      APP_NAME.toUpperCase(),
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {
                      Navigator.pushNamed(context, CART);
                    },
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  IconButton(
                    icon: Icon(Icons.notifications),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: FlutterLogo(
                      size: 200,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
