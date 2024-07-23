import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider_demo/SerializationAndDeserialization/model.dart';

class SerializationDeserializationDemo extends StatelessWidget {
  const SerializationDeserializationDemo({super.key});

  @override
  Widget build(BuildContext context) {

    User userObject=new User(id: '01', name: 'alex', address: 'lalitpur');

    String userJson='{"id":"01","name":"alex","address":"lalitpur"}';
    return Scaffold(
      appBar: AppBar(
        title: Text('Serialization and deserialization demo'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){

              //serialization
              Map<String, dynamic> map=userObject.toMap();
              String json=jsonEncode(map);
              print(json);

            }, child: Text('serialize')),
            SizedBox(width: 8,),
            ElevatedButton(onPressed: (){
              //deserialization
              // final userMap=jsonDecode(userJson) as Map<String, dynamic>;
              // final user=User.fromJson(userMap);
              // print(user.address);
              var decode=jsonDecode(userJson);
              Map<String , dynamic> map=decode;
              User user=new User.fromJson(map);
              print(user.name);
            }, child: Text('deserialize')),
          ],
        ),
      ),

    );
  }
}
