import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messenger_clone/constants.dart';

class SocalIcon extends StatelessWidget {
  final String iconSrc;
  final Function press;
  final Color iconColor;
  const SocalIcon({
    Key key,
    this.iconSrc,
    this.press,
    Color iconColor,
  })  : iconColor = iconColor ?? Colors.black,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryLightColor,
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconSrc,
          width: 20,
          height: 20,
          color: iconColor,
        ),
      ),
    );
  }
}
