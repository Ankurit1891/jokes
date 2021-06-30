import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSliderScreen extends StatefulWidget {
  @override
  _ImageSliderScreenState createState() => _ImageSliderScreenState();
}

class _ImageSliderScreenState extends State<ImageSliderScreen> {
  final List imageList=[
    "assets/images/pubg1.jpg",
    "assets/images/pubg2.jpg",
    "assets/images/pubg3.jpg",
    "assets/images/pubg4.jpg",
    "assets/images/pubg5.jpeg"
  ];
  final List url=[
    "url 1",
    "url 2",
    "url 3",
    "url 4",
    "url 5"
  ];
  List<T> map<T>(List list,Function handler){
    List<T> result=[];
    for(var i=0;i<list.length;i++)
      {
        result.add(handler(i,list[i]));
      }
    return result;
  }
  int _current;
  @override
  Widget build(BuildContext context) {
    return Container(
     // margin: EdgeInsets.only(top: 100),
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              autoPlay: true,
              reverse: false,
              initialPage: 0,
              onPageChanged: (index,a){
                setState(() {
                  _current=index;
                });

              },
            ),
            items: imageList.map((assetImageText,) => ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                print(url[_current]);
                        },
                        child: Image.asset(assetImageText,
                        width:1000,height: 200,fit: BoxFit.cover,),
                      ),
                    ],
                  )
                ],
              ),
            ),).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map(imageList, (index,url){
              return Container(
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 3),
                width: _current==index ? 15:5,
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: _current==index?Colors.grey:Colors.white,
                  // shape: BoxShape.rectangle,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

