import 'package:flutter/material.dart';
import '../app_colors.dart';

class LogoText extends StatelessWidget {
  const LogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(

      shaderCallback: ( bounds) => LinearGradient(
          colors: [
            AppColors.primary ,
            AppColors.secondary
          ],
          begin: Alignment.topCenter ,
          end: Alignment.bottomCenter
      ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)) ,
      child: Text(
        "LOGO",
        style: TextStyle(
          fontSize: 80 ,
          fontWeight: FontWeight.w400 ,
          fontFamily: 'prime',
          color: Colors.white ,
        ),
      ),
    );
  }
}
