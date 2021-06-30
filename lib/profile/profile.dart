import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jokes/backgroundimage/backgroundimage.dart';
import 'package:jokes/constants.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/profileimg.jpg"),
              fit: BoxFit.cover,
            )
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.black,
               title: Center(child: Text("My Profile",style: TextStyle(color: Colors.white,fontSize: 29,fontWeight: FontWeight.bold,fontFamily: "Lobster"),)),
              leading: Padding(
                padding: const EdgeInsets.only(left: 10,bottom: 10),
                child: IconButton(icon: Icon(Icons.arrow_back_ios,size: 30,color: Colors.white,),onPressed: (){
                  Navigator.pop(context);
                },),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(Icons.arrow_back_ios,color: Colors.black,),
                )
              ],
            ),
            body: Constants.name!=null?SingleChildScrollView(
              child: Container(
                width: double.infinity,
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     //image: NetworkImage("https://images.unsplash.com/photo-1465628976988-fe43bda15798?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1952&q=80"),
                //     fit: BoxFit.cover
                //   )
                // ),
                child: Column(
                  children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                          child: CircleAvatar(radius: 70,
                          backgroundImage: Constants.image!=null?FileImage(Constants.image):AssetImage("assets/images/noDp.jpg",)),
                      ),
                      SizedBox(height: 20,),
                      inputStyle(inputText:" Profile Name ",text: Constants.name,),
                      inputStyle(inputText:"        Email        ",text: Constants.email,),
                      inputStyle(inputText:"Phone Number",text: Constants.number,),
                    inputStyle(inputText:"       Address      ",text: Constants.address,),
                    //inputStyle(inputText:"Profile Name",text: Constants.name,),

                  ],
                ),
              ),
            ):Container(
              color: Colors.black,
              child: Center(child: Text("No profile details available...",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold, fontFamily: "Courgette"),)),
            )
          ),
        );

  }
}
class inputStyle extends StatelessWidget {
  String inputText;
  String text;
  inputStyle({this.inputText,this.text});
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          // margin: EdgeInsets.only(bottom: 10),
          margin: EdgeInsets.only(left: 30,right: 30),
          padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          height: 40,
          // padding: EdgeInsets.only(top: 13),
          child: Text(inputText,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 20,fontFamily: "Lato"),),),
        SizedBox(
          height: 10,
        ),
        Container(
            margin: EdgeInsets.only(left: 70,right: 70),
            padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(child: Text(text,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),))),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}