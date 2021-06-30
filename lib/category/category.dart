import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jokes/backgroundimage/backgroundimage.dart';
import 'package:jokes/drawer/drawer.dart';
import 'package:jokes/mainScreen/mainScreen.dart';
import 'package:rate_my_app/rate_my_app.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  Widget rows(String text1, String text2) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        transitionDuration: Duration(seconds: 2),
                        pageBuilder: (context, animation, animationTime) =>
                            MainScreen(
                              name: text1,
                            ),
                        transitionsBuilder:
                            (context, animation, animationTime, child) {
                          animation = CurvedAnimation(
                              parent: animation, curve: Curves.elasticOut);
                          return ScaleTransition(
                            scale: animation,
                            alignment: Alignment.center,
                            child: child,
                          );
                        }));
              });
            },
            child: Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              elevation: 50,
              shadowColor: Colors.deepPurple,
              child: Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text(text1.toUpperCase(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Pacifico'))),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        transitionDuration: Duration(seconds: 2),
                        pageBuilder: (context, animation, animationTime) =>
                            MainScreen(
                              name: text2
                            ),
                        transitionsBuilder:
                            (context, animation, animationTime, child) {
                          animation = CurvedAnimation(
                              parent: animation, curve: Curves.elasticOut);
                          return ScaleTransition(
                            scale: animation,
                            alignment: Alignment.center,
                            child: child,
                          );
                        }));
              });
            },
            child: Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              elevation: 50,
              shadowColor: Colors.deepPurple,
              child: Container(
                decoration: BoxDecoration(
                 // / color: Colors.grey[300],

                  borderRadius: BorderRadius.circular(20),
                ),
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.width / 3,
                child: Center(
                    child: Text(
                  text2.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',
                  ),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return RateAppInitWidget(builder:(rateMyApp)=>  Stack(
        children: [
          BackgroundImage("laugh.jpg"),
          Scaffold(
            backgroundColor: Colors.black,
              appBar:AppBar(
                backgroundColor: Colors.black,

                title: Center(child: Text("LAUGHZY",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30,fontFamily: "Lobster"),)),
                elevation: 50,
                shadowColor: Colors.grey[900],
                actions: [
                  Container(
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                        onTap: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Favourites()));
                          });
                        },
                        child: Icon(Icons.favorite_outlined,color: Colors.blue[800],size: 30,)),
                  )
                ],
              ),
              drawer:DrawerMain(),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10,right: 10),
                      decoration: BoxDecoration(
                       image: DecorationImage(
                         image: AssetImage("assets/images/laugh.jpg"),
                         fit: BoxFit.cover
                       ),
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          rows("programming", "miscellaneous"),
                          SizedBox(
                            height: 20,
                          ),
                          rows("corona" , "teacher" ),
                          SizedBox(
                            height: 20,
                          ),
                          rows("dark" , "old",),
                          SizedBox(
                            height: 20,
                          ),
                          rows("fat" , "skinny"),
                          SizedBox(
                            height: 20,
                          ),
                          rows("bald" , "stupid" ),
                          SizedBox(
                            height: 20,
                          ),
                          rows("tall" , "short" ),
                          SizedBox(
                            height: 20,
                          ),
                          rows("space" , "name" ),
                          SizedBox(
                            height: 20,
                          ),
                          Text("--Developer: @Sanjivani--",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontFamily: "Courgette"),),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 20,
                      color:Colors.black,
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}





