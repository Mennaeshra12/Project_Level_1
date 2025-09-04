import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_level_1/Login.dart';
import 'package:project_level_1/widgets/Custom_Text_Field.dart';

import 'app_colors.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
                  SizedBox(height: 125,),

                  Text("Let's Get Started!",
                      style: GoogleFonts.roboto(
                        fontSize: 24 ,
                        fontWeight: FontWeight.bold,

                      )
                  ),
                  SizedBox(height: 8,),
                  Text("Create an account on MNZL to get all Features ",
                      style: GoogleFonts.roboto(
                          fontSize: 14 ,
                          fontWeight: FontWeight.normal,
                          color: AppColors.gray

                      )
                  ),
                  SizedBox(height: 30,),
                  CustomTextField(
                      controller: Username,
                      hint: "First Name",
                      icon: Icons.person_outline_outlined),
                  SizedBox(height: 15,),
                  CustomTextField(
                      controller: Username,
                      hint: "Last Name",
                      icon: Icons.person_outline_outlined),
                  SizedBox(height: 15,),
                  CustomTextField(
                      controller: Username,
                      hint: "User Name",
                      icon: Icons.person_outline_outlined),
                  SizedBox(height: 15,),
                  CustomTextField(
                      controller: Username,
                      hint: "Email",
                      icon: Icons.email_outlined),
                  SizedBox(height: 15,),
                  CustomTextField(
                      controller: Username,
                      hint: "Password",
                      icon: Icons.lock_outlined),
                  SizedBox(height: 15,),
                  CustomTextField(
                      controller: Username,
                      hint: "Confirm Password",
                      icon: Icons.lock_outlined),
                  SizedBox(height: 30,),
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
                          " CREATE" ,
                          style: GoogleFonts.roboto(
                              fontSize: 16 ,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?",
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
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: Text("Login here"),
                      ),

                    ],
                  )
                ],
              ),
            ),
          ),
        ),


      ],
    );
  }
}
