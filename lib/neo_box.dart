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
          child: Image.network('https://encrypted-tbn0.gstatic.com/'
              'images?q=tbn:ANd9GcT5_0CRmJGP9COfqnVEk6H_0cdTFf8qtBFCxA&s',fit: BoxFit.cover,)
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
       width: 150,
       height: 150,
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
