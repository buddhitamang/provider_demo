import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider_demo/SerializationAndDeserialization/model.dart';

class SeriDeseriDemo extends StatelessWidget {
  const SeriDeseriDemo({super.key});

  @override
  Widget build(BuildContext context) {

    User user=new User(id: '001', fullName: 'buddhi tamang', address: 'thaiba');
    String  userJson='{"id":"001","fullName":"buddhi tamang","address":"thaiba"}';
    return Scaffold(
      appBar: AppBar(
        title: Text('Serialization and Deserialization Demo'),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Map<String,dynamic> userMap=user.toMap();
              String json=jsonEncode(userMap);
              print(json);

            }, child: Text('Serialize'),),
            SizedBox(width: 15,),
            ElevatedButton(onPressed: (){
              var decoded=jsonDecode(userJson);
              Map<String,dynamic> map= decoded;
              User newUser=new User.fromJson(map);
              print(newUser.toString());


            }, child: Text('Deserialize')),
          ],
        ),
      ),

    );
  }
}
