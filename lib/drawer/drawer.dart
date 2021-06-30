import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jokes/constants.dart';
import 'package:jokes/profile/editprofile.dart';
import 'package:jokes/profile/profile.dart';
import 'package:jokes/rateApp/rateApp.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:rate_my_app/rate_my_app.dart';

class DrawerMain extends StatefulWidget {
  // final DrawerMain rateMyApp;
  // const DrawerMain({Key key,@required this.rateMyApp}):super(key:key);
  @override
  _DrawerMainState createState() => _DrawerMainState();
}

class _DrawerMainState extends State<DrawerMain> {

  Future<void> openUrl(String url)async
  {
    if(await canLaunch(url))
    {
      await launch(url,forceSafariVC: true,forceWebView: false,
          headers:<String,String>{'header_key':'header_key'});
    }
    else{
      throw "Could not launch url";
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // ignore: unnecessary_statements
    Constants.image;
  }
  @override
  Widget build(BuildContext context) {
    return RateAppInitWidget(
      builder:(rateMyApp)=>   Drawer(
        child: Container(
        color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                Container(
                  padding: EdgeInsets.only(top: 50,bottom: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
                  ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: Constants.image!=null?FileImage(Constants.image):AssetImage("assets/images/noDp.jpg",),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15,bottom: 10),
                      child: Text(Constants.email!=null?Constants.email:"example@gmail.com",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,fontFamily: "Lato"),),
                    )
                  ],
                ),
                ),

                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                      });
                    },
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20,top: 5,bottom:  5),
                          alignment: Alignment.centerLeft,
                          child: CircleAvatar(
                            radius: 15,backgroundImage: AssetImage("assets/images/profile.png"),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20,top: 5,bottom:  5),
                          alignment: Alignment.centerLeft,
                          child: Text("Profile",style: TextStyle(color: Colors.white,fontSize: 20),),),
                      ],
                    ),
                  ),
                  Divider(
                    height: 20,
                    thickness: .7,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.white,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfile()));
                    },
                    child: Row(
                      children: [
                        Container(

                          margin: EdgeInsets.only(left: 20,top: 5,bottom:  5),
                          color: Colors.black,
                          alignment: Alignment.centerLeft,
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 15,backgroundImage: AssetImage("assets/images/profileEdit.png"),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20,top: 5,bottom:  5),
                          alignment: Alignment.centerLeft,
                          child: Text("Edit Profile",style: TextStyle(color: Colors.white,fontSize: 20),),),
                      ],
                    ),
                  ),
                  Divider(
                    height: 20,
                    thickness: .7,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.white,
                  ),
                  GestureDetector(
                    onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>RateApp(rateMyApp: rateMyApp)));
                    },
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20,top: 5,bottom:  5),
                          color: Colors.black,
                          alignment: Alignment.centerLeft,
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 15,backgroundImage: AssetImage("assets/images/star.png"),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20,top: 5,bottom:  5),
                          alignment: Alignment.centerLeft,
                          child: Text("Rate App",style: TextStyle(color: Colors.white,fontSize: 20),),),
                      ],
                    ),
                  ),
                  Divider(
                    height: 20,
                    thickness: .7,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.white,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Center(child: Text("Follow me on",style: TextStyle(color: Colors.grey,fontSize: 15,fontFamily: "Lato"),)),),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: () {
                              openUrl("https://www.instagram.com/sassy_nightingle/");
                            },
                            child: Image(
                              image: AssetImage(
                                  "assets/images/instaNew.png"),
                              width: 20,
                              height: 20,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: GestureDetector(
                              onTap: () {
                                openUrl("https://www.linkedin.com/in/sanjivani-229598215/"); //////////    VALID DISCORD SERVER LINK    /////////////////////////
                              },
                              child: Image(
                                // color: Colors.white,
                                image: AssetImage(
                                    "assets/images/linkedin.png",),
                                width: 20,
                                height: 23,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: GestureDetector(
                              onTap: () {
                               openUrl("https://twitter.com/Sanjiva87289909"); //////////    VALID YOUTUBE LINK    /////////////////////////
                              },
                              child: Image(
                                image: AssetImage(
                                    "assets/images/twitterNew.png"),
                                width: 23,
                                height: 22,
                              )),
                        ),

                      ],
                    ),

                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 20
                  ),
                  child: Text("--Developer: @Sanjivani--",style: TextStyle(color:Colors.white70,fontWeight: FontWeight.bold,fontFamily: "Courgette"),)),
              // SizedBox(
              //   height: 10,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
class RateAppInitWidget extends StatefulWidget{
  final Widget Function(RateMyApp) builder;
  const RateAppInitWidget({
    Key key,
    @required this.builder,
  }):super(key: key);
  @override
  _RateAppInitWidget createState()=>_RateAppInitWidget();
}

class  _RateAppInitWidget extends State<RateAppInitWidget>{
  RateMyApp rateMyApp;
  static const playStoreId="com.android.chrome";
  //TODO static const playStoreId="com.example.battle_room";
  static const appStoreId="com.apple.mobilesafari";
  //TODO static const appStoreId="com.example.battle_room";

  @override
  Widget build(BuildContext context) =>RateMyAppBuilder(rateMyApp:RateMyApp(
    googlePlayIdentifier: playStoreId,
    appStoreIdentifier: appStoreId,
  ), onInitialized: (BuildContext context, RateMyApp rateMyApp) {
    setState(() {
      this.rateMyApp=rateMyApp;
    });

  },
    builder:(context)=>rateMyApp==null?Center(child:CircularProgressIndicator()):widget.builder(rateMyApp),
  );

}

