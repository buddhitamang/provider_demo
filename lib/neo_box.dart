import 'package:flutter/material.dart';

class NeoBox extends StatelessWidget {
  final child;
  const NeoBox({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Moje(
          child: Image.network('https://images.pexels.com/photos/4982737/pexels-photo-4982737.jpeg?cs=srgb&dl=pexels-shadab-1650775-4982737.jpg&fm=jpg',fit: BoxFit.cover,)
        )
      ),
    );
  }
}

class Moje extends StatelessWidget{
  final child;
  const Moje({super.key, this.child});

  @override
  Widget build(BuildContext context) {
     return Container(
       child: child,
       width: 120,
       height: 120,
       decoration: BoxDecoration(
           color: Colors.grey,
           borderRadius: BorderRadius.circular(12),
           boxShadow: [
             BoxShadow(color: Colors.white, offset: Offset(-5,-5), blurRadius: 5,),
             BoxShadow(color: Colors.red, offset: Offset(3,3) , blurRadius: 5),
             BoxShadow(color: Colors.green, offset: Offset(3,-3) , blurRadius: 5),
           ]),
     );
  }

}
