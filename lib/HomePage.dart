import 'package:exam_app_final/LiveBidding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 25, 15, 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('images/Cryptocurrency.png'),
                    SizedBox(width: 10,),
                    Text("8.42 ETH", style: TextStyle(color: Colors.white, fontSize: 25),)
                  ],
                ),
                Row(
                  children: [
                    Image.asset('images/Frame 34111.png'),
                    SizedBox(width: 10,),
                    Image.asset("images/Frame 113.png"),
                  ],
                ),
              ],
            ),

            SizedBox(height: 20,),
            DefaultTabController(
              length: 4,
              child: Column(
                children: [
                  TabBar(
                      indicatorColor: Colors.green,
                      labelColor: Colors.green,
                      unselectedLabelColor: Colors.white,
                      indicatorWeight: 4.0,
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
                      tabs:
                  [
                    Text("All", style: TextStyle(color: Colors.white),),
                    Text("Music"),
                    Text("Sports"),
                    Text("Domains"),
                  ]
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LiveBidding()),
                  );
                }, child: Text("Live Biddings", style: TextStyle(
                  color: Colors.lightGreenAccent,
                  fontSize: 22,
                ),)),
                Text("See All", style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),),

              ],
            ),
            SizedBox(height: 15,),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 200,
                    height: 300,
                    child: Column(
                      children: [
                        Image.asset('images/Rectangle 69.png'),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text("By Admin23",style: TextStyle(color: Colors.grey),),
                                Text("Admin #3139", style: TextStyle(fontSize: 15, color: Colors.white),)
                              ],
                            ),
                            Column(
                              children: [
                                Text("Current price", style: TextStyle(color: Colors.grey,), ),
                                Text("0.47 ETH", style: TextStyle(
                                  color: Colors.lightGreenAccent,
                                ),)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ) ,
                  SizedBox(width: 10,),
                  Container(
                    width: 200,
                    height: 300,
                    child: Column(
                      children: [
                        Image.asset('images/Rectangle 69.png'),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text("By Admin23",style: TextStyle(color: Colors.white),),
                                Text("Admin #3139", style: TextStyle(fontSize: 15, color: Colors.white),)
                              ],
                            ),
                            Column(
                              children: [
                                Text("Current price" ),
                                Text("0.47 ETH", style: TextStyle(
                                  color: Colors.lightGreenAccent,
                                ),)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ) ,
                  SizedBox(width: 10,),
                  Container(
                    width: 200,
                    height: 300,
                    child: Column(
                      children: [
                        Image.asset('images/Rectangle 69.png'),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text("By Admin23",style: TextStyle(color: Colors.white),),
                                Text("Admin #3139", style: TextStyle(fontSize: 15, color: Colors.white),)
                              ],
                            ),
                            Column(
                              children: [
                                Text("Current price" ),
                                Text("0.47 ETH", style: TextStyle(
                                  color: Colors.lightGreenAccent,
                                ),),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ) ,
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.greenAccent),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [Image.asset("images/Rectangle 104.png",),
                      SizedBox(width: 10,),
                      Text("Anime Girl\n7.5k sales", style: TextStyle(color: Colors.white),),],
                  ),
                  Row(
                    children: [
                      Text("Unfollow", style: TextStyle(color: Colors.lightGreenAccent, fontSize: 15),),
                    ],
                  )
                ],
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.lightGreenAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        notchMargin: 10,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                });
              },
              icon: const Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                });
              },
              icon: const Icon(Icons.explore),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                });
              },
              icon: const Icon(CupertinoIcons.heart),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                });
              },
              icon: const Icon(CupertinoIcons.person),
            ),
          ],
        ),
      ),
    );
  }
}

