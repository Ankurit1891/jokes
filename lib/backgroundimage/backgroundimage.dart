import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  String name;
  BackgroundImage(this.name);
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) =>LinearGradient(colors: [Colors.black,Colors.black12],
        begin: Alignment.bottomCenter,
        end:Alignment.center,
      ).createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: BoxDecoration(
            image:DecorationImage(image: AssetImage('assets/images/'+name),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),)
        ),
      ),
    );
  }
}
class BackgroundImageNew extends StatelessWidget {
  String name;
  BackgroundImageNew(this.name);
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) =>LinearGradient(colors: [Colors.black,Colors.black12],
        begin: Alignment.bottomCenter,
        end:Alignment.center,
      ).createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: BoxDecoration(
            image:DecorationImage(image: NetworkImage(name),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),)
        ),
      ),
    );
  }
}