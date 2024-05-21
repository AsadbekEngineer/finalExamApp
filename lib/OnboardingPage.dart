import 'package:exam_app_final/HomePage.dart';
import 'package:exam_app_final/sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
            color: Colors.green.shade900,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 25,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.green,
                      ),
                      child: Center(
                        child: TextButton(
                          onPressed: (){
                            Navigator.push(context, CupertinoPageRoute(
                                builder: (context){
                                  return HomePage();
                                }
                            ),);
                          },
                          child: Text("Skip", style: TextStyle(color: Colors.black, fontSize: 12),),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 3,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.green.shade300,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          height: 3,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          height: 3,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          height: 3,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              SizedBox(
                height: 20,
              ),
              Image.asset('images/img.png', height: 300,),
                Center(
                  child: Column(
                    children: [Text("The Fresh NFT",
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),),
                    Text("Marketplace.", style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),),
                      SizedBox(height: 5,),
                      Text("A platform with the goal of establishing a novel",style: TextStyle(color: Colors.white),),
                      Text("creating economy", style: TextStyle(color: Colors.white),),
                      SizedBox(
                        height: 20,
                      ),


                      Container(
                        padding: EdgeInsets.all(10),
                        width: 120,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.green,
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(onPressed: (){
                                controller.previousPage(duration: Duration(milliseconds: 500), curve: Curves.easeOut);
                              }, icon: Icon(CupertinoIcons.arrow_left, size: 17,)),
                              
                              VerticalDivider(color: Colors.black,indent: 5, endIndent: 5,),
                              IconButton(onPressed: (){
                                controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeOut);
                              }, icon: Icon(CupertinoIcons.arrow_right, size: 17,)),
                            ],
                          ),
                        ),
                      ),
                    ]
                  ),
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
            color: Colors.green.shade900,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 25,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.green,
                      ),
                      child: Center(
                        child: TextButton(
                          onPressed: (){
                            controller.jumpToPage(3);
                          },
                          child: Text("Skip", style: TextStyle(color: Colors.black, fontSize: 12),),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 3,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          height: 3,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.green.shade300,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          height: 3,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          height: 3,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset('images/2.png', height: 300,),
                Center(
                  child: Column(
                      children: [Text("The Fresh NFT",
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                        ),),
                        Text("Marketplace.", style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                        ),),
                        SizedBox(height: 5,),
                        Text("A platform with the goal of establishing a novel",style: TextStyle(color: Colors.white),),
                        Text("creating economy", style: TextStyle(color: Colors.white),),
                        SizedBox(
                          height: 20,
                        ),

                        Container(
                          padding: EdgeInsets.all(10),
                          width: 120,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.green,
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(onPressed: (){
                                  controller.previousPage(duration: Duration(milliseconds: 500), curve: Curves.easeOut);
                                }, icon: Icon(CupertinoIcons.arrow_left, size: 17,)),

                                VerticalDivider(color: Colors.black,indent: 5, endIndent: 5,),
                                IconButton(onPressed: (){
                                  controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeOut);
                                }, icon: Icon(CupertinoIcons.arrow_right, size: 17,)),
                              ],
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
              ],
            ),
          ),





          Container(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
            color: Colors.green.shade900,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 25,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.green,
                      ),
                      child: Center(
                        child: TextButton(
                          onPressed: (){
                            controller.jumpToPage(3);
                          },
                          child: Text("Skip", style: TextStyle(color: Colors.black, fontSize: 12),),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 3,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          height: 3,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          height: 3,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.green.shade300,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          height: 3,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset('images/3.png', height: 300,),
                Center(
                  child: Column(
                      children: [Text("The Fresh NFT",
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                        ),),
                        Text("Marketplace.", style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                        ),),
                        SizedBox(height: 5,),
                        Text("A platform with the goal of establishing a novel",style: TextStyle(color: Colors.white),),
                        Text("creating economy", style: TextStyle(color: Colors.white),),
                        SizedBox(
                          height: 20,
                        ),


                        Container(
                          padding: EdgeInsets.all(10),
                          width: 120,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.green,
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(onPressed: (){
                                  controller.previousPage(duration: Duration(milliseconds: 500), curve: Curves.easeOut);
                                }, icon: Icon(CupertinoIcons.arrow_left, size: 17,)),

                                VerticalDivider(color: Colors.black,indent: 5, endIndent: 5,),
                                IconButton(onPressed: (){
                                  controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeOut);
                                }, icon: Icon(CupertinoIcons.arrow_right, size: 17,)),
                              ],
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
              ],
            ),
          ),




          Container(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
            color: Colors.green.shade900,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 25,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.green,
                      ),
                      child: Center(
                        child: TextButton(
                          onPressed: (){
                            controller.jumpToPage(3);
                          },
                          child: Text("Skip", style: TextStyle(color: Colors.black, fontSize: 12),),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 3,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          height: 3,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          height: 3,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          height: 3,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.green.shade300,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset('images/4.png', height: 300,),
                Center(
                  child: Column(
                      children: [Text("The Fresh NFT",
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                        ),),
                        Text("Marketplace.", style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                        ),),
                        SizedBox(height: 5,),
                        Text("A platform with the goal of establishing a novel",style: TextStyle(color: Colors.white),),
                        Text("creating economy", style: TextStyle(color: Colors.white),),
                        SizedBox(
                          height: 20,
                        ),

                        Container(
                          padding: EdgeInsets.all(2),
                          width: 120,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.green,
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: (){
                                Navigator.push(context, CupertinoPageRoute(
                                  builder: (context){
                                    return SignIn();
                                  }
                                ),);
                              },
                              child: Text("Let's Get Started ->", style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),),
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
              ],
            ),
          ),




        ],
      ),
    );
  }
}
