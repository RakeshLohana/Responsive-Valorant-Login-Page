import 'package:flutter/material.dart';
import 'package:login_page/login_page.dart';
import 'package:login_page/responsive.dart';

class SidePicture extends StatefulWidget {
  const SidePicture({super.key});

  @override
  State<SidePicture> createState() => _SidePictureState();
}

class _SidePictureState extends State<SidePicture> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;

    return Scaffold(
        body:Row(
          children: [

           Expanded(
             flex: 1,
               child:Padding(
                 padding: EdgeInsets.symmetric(horizontal: ResposiveWidget.isLargeScreen(context)? width*0.04:0),
                 child: Container(
                   child: LoginPage(),
                 ),
               )),

            ResposiveWidget.isSmallScreen(context)?const SizedBox():  Expanded(
                child:Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Stack(
                    children:<Widget> [
                      Container(


                        child: Image(
                        height: height*1,
                        fit: BoxFit.cover,
                        image: AssetImage('assets/valorant.jpg',),
                    ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20,20,0,0),
                        child: Image(
                          height: height*0.12,
                            image: AssetImage('assets/logo2.png')
                        ),
                      ),
                      Positioned(
                        bottom: height*0.06,
                        right: width*0.03,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey
                          ),
                          child: Center(
                            child: Icon(Icons.settings,color: Colors.white,),
                          ),
                        ),
                      ),
                      Positioned(
                        top:20 ,
                        right: 10,
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(

                              color: Colors.transparent
                          ),
                          child:Row(
                            children: [
                              Icon(Icons.minimize_outlined,color: Colors.grey,),
                              SizedBox(width: 10,),
                              Icon(Icons.question_mark_outlined,color: Colors.grey),
                              SizedBox(width: 10,),
                              Icon(Icons.close_outlined,color: Colors.grey)
                            ],
                          )

                        ),
                      )

                    ]
            ),
                ),

        )
    ],
    )
    );
  }
}


