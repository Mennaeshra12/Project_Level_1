import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_level_1/register.dart';
import 'package:project_level_1/widgets/Custom_Text_Field.dart';
import 'package:project_level_1/widgets/logo.dart';

import 'app_colors.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController Username = TextEditingController();

    return Stack(
      children: [
        Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 160,),
                  Center(child: LogoText()),
                  SizedBox(height: 5,),
                  Text("Welcome Back!",
                      style: GoogleFonts.roboto(
                        fontSize: 20 ,
                        fontWeight: FontWeight.bold,

                      )
                  ),
                  SizedBox(height: 10,),
                  Text("Log in to existing LOGO account",
                      style: GoogleFonts.roboto(
                        fontSize: 14 ,
                        fontWeight: FontWeight.normal,
                        color: AppColors.gray

                      )
                  ),
                  SizedBox(height: 40,),
                  CustomTextField(
                      controller: Username,
                      hint: "Username",
                      icon: Icons.person_outline_outlined),
                  SizedBox(height: 20,),
                  CustomTextField(
                      controller: Username,
                      hint: "Password",
                      icon: Icons.lock_outlined),
                  SizedBox(height: 5,),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text("Forgot Password?",
                        style: GoogleFonts.roboto(
                            fontSize: 14 ,
                            fontWeight: FontWeight.normal,
                            color: AppColors.gray

                        )
                    ),
                  ),
                  SizedBox(height: 35,),
                  Container(
                    width: 199,
                    height: 53,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color:  Colors.grey,
                          blurRadius: 100,
                          spreadRadius: 2
                        )
                      ],
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                          colors: [
                            AppColors.primary ,
                            AppColors.secondary
                          ],
                          begin: Alignment.topCenter ,
                          end: Alignment.bottomCenter
                      )
                    ),
                    child: Center(
                      child: Text(
                          "LOG IN " ,
                        style: GoogleFonts.roboto(
                            fontSize: 16 ,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text("Or sign in using",
                      style: GoogleFonts.roboto(
                          fontSize: 15 ,
                          fontWeight: FontWeight.normal,
                          color: AppColors.sign

                      )
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/facebook.png"),
                      SizedBox(width: 10,),
                      Image.asset("assets/images/Google.png"),
                      SizedBox(width: 10,),
                      Image.asset("assets/images/Apple.png")


                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don’t have an account?",
                          style: GoogleFonts.roboto(
                              fontSize: 16 ,
                              fontWeight: FontWeight.w400,
                              color: AppColors.gray

                          )
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Register()),
                          );
                        },
                        child: Text("Sign Up"),
                      ),

                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: 0,
            left: 40,
            child: SvgPicture.asset("assets/images/RecGray.svg")),
        Positioned(
            right: 120,
            child: SvgPicture.asset("assets/images/RecSky.svg")),

      ],
    );
  }
}
