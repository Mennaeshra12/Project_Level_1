import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_level_1/Login.dart';
import 'package:project_level_1/app_colors.dart';
import 'package:project_level_1/widgets/logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
        Duration(seconds: 10),
        () => Navigator.push(context, MaterialPageRoute(builder: (c) =>  Login())),
    );
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start ,
                children: [
                  SizedBox(height:110) ,
                  LogoText(),
                  Image.asset("assets/images/Vector.png"),
                  SizedBox(height: 10,),
                  Text("LOREM IPSUM ",
                    style: GoogleFonts.inter(
                      fontSize: 24 ,
                      fontWeight: FontWeight.bold ,
                    )
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:10.0 ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Lorem Ipsum is a dummy text  \n        used as placeholder ",
                          maxLines: 2,
                          style: GoogleFonts.inter(
                            fontSize: 18 ,
                            fontWeight: FontWeight.normal,
                            color: AppColors.gray ,
                          )
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          bottom: 505,
          left: 65,

          child: SvgPicture.asset("assets/images/Line.svg"),
        ),
        Positioned(
          top: 0,
          bottom: 200,
          left: 39,

          child: SvgPicture.asset("assets/images/Light.svg"),
        ),
        Positioned(
          top: 0,
          bottom: 540,
          left: 110,

          child: SvgPicture.asset("assets/images/Line.svg"),
        ),
        Positioned(
          top: 0,
          bottom: 270,
          left: 84,

          child: SvgPicture.asset("assets/images/Light.svg"),
        ),
      ],
    );
  }
}
