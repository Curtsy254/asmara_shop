import 'package:flutter/material.dart';

class SplashButton extends StatelessWidget {
  final Widget childWidget;
  final bool elevated;
  final Function onPressed;
  final Color color;
  final double width;

  const SplashButton(
      {Key key,
      this.childWidget,
      this.elevated,
      this.onPressed,
      this.color = Colors.blue,
      this.width})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 3),
      child: MaterialButton(
        minWidth: width == 0 ? MediaQuery.of(context).size.width * 0.95 : width,
        elevation: elevated ? 8 : 0,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        color: color,
        child: childWidget,
        onPressed: () {
          onPressed();
        },
      ),
    );
  }
}
