
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TweenAnimation extends StatefulWidget{
  @override
  State<TweenAnimation> createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation> with SingleTickerProviderStateMixin{
  late Animation animation;
  late AnimationController animationController;
  late Animation colorAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController=AnimationController(vsync: this,duration: Duration(seconds: 4));
    animation=Tween(begin: 40.0,end: 120.0).animate(animationController);
    colorAnimation=ColorTween(begin: Colors.red,end: Colors.black).animate(animationController);

    animationController.addListener((){
      setState(() {

      });
    });

    animationController.repeat(reverse: true);


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: colorAnimation.value,
          height: animation.value,
          width: animation.value,
        ),
      ),

    );
  }
}