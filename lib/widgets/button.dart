import 'package:flutter/cupertino.dart';

class Button extends StatelessWidget {
  final bool isResponsive;
 final double width;
  Button({Key key, this.width, this.isResponsive = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
       ),
     
    );
  }
}
