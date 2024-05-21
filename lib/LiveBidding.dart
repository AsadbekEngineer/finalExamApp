import 'package:exam_app_final/HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LiveBidding extends StatefulWidget {
  const LiveBidding({super.key});

  @override
  State<LiveBidding> createState() => _LiveBiddingState();
}

class _LiveBiddingState extends State<LiveBidding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed:(){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          icon: Icon(CupertinoIcons.arrow_left, color: Colors.white,),
        ),
        title: Text("Live Biding", style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 40,),
                  Image.asset("images/cards.png", width: 400,),
                ],
              ),

            ],
          ),
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
