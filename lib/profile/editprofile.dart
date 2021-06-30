import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jokes/category/category.dart';
import 'dart:io';

import 'package:jokes/constants.dart';
import 'package:jokes/drawer/drawer.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
 File _image;
  final picker = ImagePicker();

  Future getImageCamera(BuildContext context) async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
    Navigator.of(context).pop();
  }
  Future getImageGallery(BuildContext context) async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
    Navigator.of(context).pop();
  }
  Future<void> _showChoiceDialog(BuildContext context)
  {
    return showDialog(context: context,builder: (BuildContext context){
      return AlertDialog(
        title: Text("Make a Choice"),
        content: SingleChildScrollView(
          child: ListBody(
            children: [

              GestureDetector(
                child: Text("Gallery"),
                onTap: (){
                  getImageGallery(context);
                },
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 15),
                child: GestureDetector(
                  child: Text("Camera"),
                  onTap: (){
                    getImageCamera(context);
                  },
                ),
              ),
              GestureDetector(
                child: Text("Remove D.P."),
                onTap: (){
                  setState(() {
                    _image=null;
                  });
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      );
    });
  }
  final formKey=GlobalKey<FormState>();
  final profileName = new TextEditingController();
  final email = new TextEditingController();
  final number = new TextEditingController();
  final address = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
            appBar: AppBar(
              elevation: 10,
              backgroundColor: Colors.black,
              leading: Padding(
                padding: EdgeInsets.only(left: 10),
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 30,),onPressed: (){
                    setState(() {
                      Navigator.pop(context);
                    });
                },
                ),
              ),
              title: Center(child: Text("Edit Profile",style: TextStyle(color:Colors.white,fontSize: 25,fontFamily: "Lobster",fontWeight: FontWeight.bold),)),
              actions: [
                Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(Icons.height,size: 30,color: Colors.black,))
              ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 10),
          padding: EdgeInsets.only(top: 10,bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            image: DecorationImage(
              image: AssetImage("assets/images/background.jpg",),
                  fit: BoxFit.fill
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Center(
                child: CircleAvatar(backgroundImage: _image!=null?FileImage(_image):AssetImage("assets/images/noDp.jpg"),
                  radius: 60,
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: (){
                    _showChoiceDialog(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 10,bottom: 10),
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Edit DP",style: TextStyle(color: Colors.white,fontFamily: "Lato"),),
                  ),
                ),
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    inputStyle(inputText:"Profile Name"),
                    form(profileName, "Profile Name..."),
                    inputStyle(inputText:"Email"),
                    form(email, "Email..."),
                    inputStyle(inputText:"Phone number"),
                    form(number, "Phone Number..."),
                    inputStyle(inputText:"Address"),
                    form(address, "Address..."),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  if(formKey.currentState.validate())
                  {
                    setState(() {
                      Constants.image=_image;
                      Constants.number=number.text;
                      Constants.email=email.text;
                      Constants.name=profileName.text;
                      Constants.address=address.text;
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Category()));
                  }
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Save",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20,fontFamily: "Lato"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class inputStyle extends StatelessWidget {
  String inputText;
  inputStyle({this.inputText});
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 40,
      padding: EdgeInsets.only(top: 13),
      child: Text(inputText,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 20,fontFamily: "Lato"),),);
  }
}
Widget form(inputText,String hintText){
  bool num=false;
  int n=1;
  if(hintText=="Phone Number...")
  {
    num=true;
  }
  if(hintText=="Address...")
    {
      n=2;
    }
   return Container(
    margin: EdgeInsets.only(left: 50,right: 50),
    child: Padding(
      padding: const EdgeInsets.only(left: 20),
      child: TextFormField(
        validator: (val)
        {
          return val.isEmpty || val==" "?"Entry Invalid ":null;
        },
        controller: inputText,
         keyboardType: num?TextInputType.number:TextInputType.text,
        maxLines: n,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          contentPadding:
          const EdgeInsets.only(left: 25.0, bottom: 8.0, top: 8.0),
          fillColor:Colors.black /*Color.fromRGBO(28, 44, 57, 1.0)*/,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black/*color: Color.fromRGBO(28, 44, 57, 1.0)*/),
            borderRadius: BorderRadius.circular(50),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black/*Color.fromRGBO(28, 44, 57, 1.0)*/),
            borderRadius: BorderRadius.circular(50),
          ),
          hintStyle: TextStyle(
              color:Colors.grey,
              fontSize: 17
          ),
        ),
      ),
    ),
  );
}