import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'globalcontroller.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      //home: Mypage(),
   //   home: Screen2(),
     // home:password_entry(),
     // home: Mainscreen(),
home: HomePage1(),
// home: Lolalal(),
    );
  }
}
/// on start page

class Mypage extends StatefulWidget {
  const Mypage({Key? key}) : super(key: key);

  @override
  _MypageState createState() => _MypageState();
}

class _MypageState extends State<Mypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0f0f0f),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

        Center(child: Text("Matched",style: TextStyle(color: Colors.white,fontSize: 33,fontWeight: FontWeight.bold
        ),)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

            Center(child: Text("dating",style: TextStyle(color: Color(0xffff0404),fontSize: 33,fontWeight: FontWeight.bold
            ),)),

            Center(child: Text(" online",style: TextStyle(color: Colors.white,fontSize: 33,fontWeight: FontWeight.bold
            ),))
          ],),

SizedBox(height: 50,),


Image.asset("assets/logo.png",scale: 1,),

          SizedBox(height: 40,),

Text("Application aimed at singles looking \nfor a serious relationship",style: TextStyle(color: Color(0xffe0e0e0)),),

          SizedBox(height: 30,),
          RaisedButton(
            textColor: Colors.white,
            color: Color(0xffff0404),
            child: Padding(
              padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
              child: Text("Continue",style: TextStyle(
                color:Colors.white,
                fontSize: 22
              ),),
            ),
            onPressed: () {


            },
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
            ),
          ),



      ],),


    );
  }
}

/// login email screen




class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xff0f0f0f),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [



          Image.asset("assets/logo.png",scale: 1,),

          SizedBox(height: 50,),
          Center(
            child: Container(

              width:  MediaQuery.of(context).size.width-50,
              decoration: BoxDecoration(
                color: Color(0xff1f1f1f),
                borderRadius: BorderRadius.circular(18)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
padding: EdgeInsets.fromLTRB(0, 23, 0, 18),
                  child: Center(
                    child: Text("Login",style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,fontWeight: FontWeight.bold
                    ),),
                  ),
                ),

                Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 05),
                    child: Text("enter username / email id",style: TextStyle(color: Color(0xffe0e0e0)),)),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff2b2b2b),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                
                    height: 56,
                    child: TextField(
cursorColor: Colors.white,
                      cursorHeight: 24,
                      decoration: InputDecoration(
                        border: InputBorder.none
                      ),
                      style: TextStyle(color: Colors.white,fontSize: 18),

                    ),
                  ),
                ),
                  

                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 23),
                    child: Center(
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Color(0xffff0404),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(40, 13, 40, 13),
                          child: Text("Next",style: TextStyle(
                              color:Colors.white,
                              fontSize: 22
                          ),),
                        ),
                        onPressed: () {


                        },
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),





                ],),


            ),
          )



      ],),



    );
  }
}

///   login password screen




class password_entry extends StatefulWidget {
  const password_entry({Key? key}) : super(key: key);

  @override
  _password_entryState createState() => _password_entryState();
}

class _password_entryState extends State<password_entry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xff0f0f0f),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [



          Image.asset("assets/logo.png",scale: 1,),

          SizedBox(height: 50,),
          Center(
            child: Container(

              width:  MediaQuery.of(context).size.width-50,
              decoration: BoxDecoration(
                  color: Color(0xff1f1f1f),
                  borderRadius: BorderRadius.circular(18)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Center(
                      child: CircleAvatar(
                        backgroundColor: Color(0xff1f1f1f),

                        radius: 40,
                        backgroundImage: NetworkImage("https://www.xtrafondos.com/wallpapers/vertical/la-casa-de-papel-fanart-4162.jpg"),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 13, 0, 18),
                    child: Center(
                      child: Text("HI ! PROFESSOR",style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),

                  Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 05),
                      child: Text("Password",style: TextStyle(color: Color(0xffe0e0e0)),)),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff2b2b2b),
                          borderRadius: BorderRadius.circular(5)
                      ),

                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),

                      height: 56,
                      child: TextField(
                        cursorColor: Colors.white,
                        cursorHeight: 24,
                        obscureText: true,
                        decoration: InputDecoration(

                            border: InputBorder.none
                        ),
                        style: TextStyle(color: Colors.white,fontSize: 18),

                      ),
                    ),
                  ),


                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 23),
                    child: Center(
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Color(0xffff0404),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(40, 13, 40, 13),
                          child: Text("Login",style: TextStyle(
                              color:Colors.white,
                              fontSize: 22
                          ),),
                        ),
                        onPressed: () {


                        },
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),





                ],),


            ),
          )



        ],),



    );
  }
}

/// main screen




class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  bool curentview=false;
  final _drawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: ZoomDrawer(

  controller: _drawerController,
  style: DrawerStyle.DefaultStyle,
  menuScreen: Container(
    color: Colors.green,
    child: Column(children: [


    ],),
  ),
  mainScreen: SafeArea(
    child: Stack(
      children: [
        GestureDetector(
          onTap: (){
            setState(() {
              Globalconroller.navbarvisible=!Globalconroller.navbarvisible;

            });


          },
          onVerticalDragUpdate: (details) {
            int sensitivity = 8;
            if (details.delta.dy > sensitivity) {
              print("down swipe");
              // Down Swipe
              Globalconroller.pagecont1.previousPage(duration: Duration(milliseconds: 400), curve: Curves.linear);
              setState(() {
                Globalconroller.navbarvisible=true;
              });




            } else if(details.delta.dy < -sensitivity){
              print("up swipe");

              Globalconroller.pagecont1.nextPage(duration: Duration(milliseconds: 400), curve: Curves.linear);
              // Up Swipe
              setState(() {
                Globalconroller.navbarvisible=false;

              });
            }
          },
          child: PageView(
            controller: Globalconroller.pagecont1,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: [

              Container(color: Colors.red,),
              Container(color: Colors.green,),
              Container(color: Colors.blue),

            ],
          ),
        ),


        Visibility(
          visible: Globalconroller.navbarvisible,
          child: Column(
            children: [

              Container(
                color: Color(0xff2b2b2b),
                child: Column(children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){
print("soooooooooooooooooooooooooooooooooooooooooooo");
// _drawerController.open;
                        _drawerController.open!();


                      }, icon: Icon(Icons.list,color: Color(0xffff0404),)),

                      Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
                        child: Center(
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none
                            ),
                            cursorColor: Colors.white,
                            cursorHeight: 22,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize:18
                            ),

                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xff535353),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        width: MediaQuery.of(context).size.width-120,
                        height: 49,
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.send,color: Color(0xffff0404),)),


                    ],
                  ),



                ],),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                color: Color(0xff2b2b2b),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Text("All Profiles",style: TextStyle(color: Color(0xffff0404),fontSize: 19,fontWeight: FontWeight.bold),),
                    Text("|",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 29),),
                    Text("Matches",style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),)

                  ],),
              ),
            ],
          ),
        ),



      ],
    ),
  ),

  borderRadius: 40.0,
  showShadow: true,
  angle: -12.0,
  backgroundColor: Colors.grey,
  slideWidth: MediaQuery.of(context).size.width*.55,
  openCurve: Curves.fastOutSlowIn,
  closeCurve: Curves.bounceIn,
),




    );
  }
}

//////////////////....................///////////////////////////////////////////////




