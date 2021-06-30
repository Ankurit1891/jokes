import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rate_my_app/rate_my_app.dart';


class RateApp extends StatefulWidget {
  final RateMyApp rateMyApp;
  const RateApp({Key key,@required this.rateMyApp}):super(key:key);
  @override
  _RateAppState createState() => _RateAppState();
}

class _RateAppState extends State<RateApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/rateAppimg.jpg"),
            fit: BoxFit.cover,
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(89, 89, 89,0.5),
          title: Center(child: Text("Rate This App",style: TextStyle(color: Colors.white,fontSize: 29,fontWeight: FontWeight.bold,fontFamily: "Lobster"),)),
          leading: Padding(
            padding: const EdgeInsets.only(left: 10,bottom: 10),
            child: IconButton(icon: Icon(Icons.arrow_back_ios,size: 30,color: Colors.white,),onPressed: (){
              Navigator.pop(context);
            },),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.arrow_back_ios,color: Colors.transparent,),
            )
          ],
        ),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                margin: EdgeInsets.only(left: 30,right: 30),
                child: Text("If you love Laughzy then please rate this app on PlayStore....",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 30,fontFamily: "Pacifico",letterSpacing: 1.1),)),
            GestureDetector(
              onTap: (){
                widget.rateMyApp.showRateDialog(context);
              },
              child: Container(
                margin: EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),
                padding: EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(77, 121, 255,.2),
                ),
                child: Text("Rate Laughzy",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: "Lato",letterSpacing: 1)),
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
