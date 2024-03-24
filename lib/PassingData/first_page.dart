
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider_demo/PassingData/second_page.dart';

class FirstPage1 extends StatelessWidget{
  final textController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                ),

              ),
            ),
            MaterialButton(onPressed: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage1(text: textController.text.toString(),)));

            },
              color: Colors.blue,
            child: Text('Enter',style: TextStyle(color: Colors.white),),)
          ],
        ),
      ),
    );
  }

}