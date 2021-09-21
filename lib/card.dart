import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class card extends StatefulWidget {
  const card({Key? key}) : super(key: key);

  @override
  _cardState createState() => _cardState();
}

class _cardState extends State<card> {
  int selectIndex = 0;
  List data = [
    Icons.home_outlined,
    Icons.add_box_outlined,
    Icons.favorite_outline_sharp,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
            ),
            AspectRatio(
              aspectRatio: 1 / 1,
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://theawesomedaily.com/wp-content/uploads/2017/02/funny-profile-pictures-18-1.jpg"))),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withOpacity(0),
                            Colors.black.withOpacity(1)
                          ])),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 130,
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "P.G Biology student Wakes up pretending to be a future scientist,P.G Biology student Wakes up pretending to be a future scientist, P.G Biology student Wakes up pretending to be a future scientist,  ",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Benard Claus,20",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Currently a/an",
                            style: TextStyle(
                              color: Color(0xff656565),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '  P.G student!',
                                  style: TextStyle(color: Colors.black)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: ImageIcon(
                        NetworkImage(
                            "https://th.bing.com/th/id/R.c8f12ad666b193b1109bc7bfc562c1c9?rik=xfRQ%2byl7B6pIjg&riu=http%3a%2f%2fwww.pngpix.com%2fwp-content%2fuploads%2f2016%2f03%2fRed-Heart-PNG-image.png&ehk=YUf782KvuV%2f1EArDIVa2RdC6iap%2fXbI2PiZeKBYLQbA%3d&risl=&pid=ImgRaw&r=0"),
                        size: 35,
                        color: Color(0xffFF005C),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Center(
                child: Text(
                  "swipe down to ignore",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
      // bottomNavigationBar: Padding(
      //   padding: EdgeInsets.all(15),
      //   child: Material(
      //     elevation: 10,
      //     borderRadius: BorderRadius.circular(15),
      //     color: Colors.white,
      //     child: Container(
      //       height: 60,
      //       width: double.infinity,
      //       child: ListView.builder(
      //         itemCount: data.length,
      //         padding: EdgeInsets.symmetric(horizontal: 10),
      //         itemBuilder: (ctx, i) => Center(
      //           child: Container(
      //             padding: EdgeInsets.symmetric(
      //                 horizontal: MediaQuery.of(context).size.width / 9.5),
      //             child: GestureDetector(
      //               onTap: () {
      //                 setState(() {
      //                   selectIndex = i;
      //                 });
      //               },
      //               child: AnimatedContainer(
      //                 duration: Duration(milliseconds: 250),
      //                 width: 35,
      //                 decoration: BoxDecoration(
      //                     border: i == selectIndex
      //                         ? Border(
      //                             top:
      //                                 BorderSide(width: 3, color: Colors.white))
      //                         : null),
      //                 child: Icon(
      //                   data[i],
      //                   size: 35,
      //                   color:
      //                       i == selectIndex ? Color(0xffFF005C) : Colors.black,
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ),
      //         scrollDirection: Axis.horizontal,
      //       ),
      //     ),
      //   ),
      // ),
    );
  }

}
