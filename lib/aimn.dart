import 'package:flutter/material.dart';

class Anim extends PageRouteBuilder {
  final Page;
  Anim({this.Page})
      : super(
            pageBuilder: (context, animation, animationtwo) => Page,
            transitionDuration: Duration(milliseconds: 900),
            transitionsBuilder: (context, animation, animationtwo, child) {
              //use offset if animation is slide
              // var b=0.0;
              // var e=1.0;
              // var mytween=Tween(begin: b,end: e);
              // var cu=CurvedAnimation(parent: animation,curve:Curves.linear );
              // return RotationTransition(turns:mytween.animate(cu) ,child: child,);
              // return ScaleTransition(scale:mytween.animate(cu) ,child: child,);
              //  var d=animation.drive(mytween);
              // return SlideTransition(child:child ,position: d,);

              return Align(
                child: SizeTransition(
                  sizeFactor: animation,
                  child: child,
                  axis: Axis.horizontal,
                ),
              );
            });
}
