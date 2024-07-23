
class User{
  late String id;
  late String name;
  late String address;

  User({required this.id, required this.name, required this.address});

  //map to object
 factory User.fromJson(Map<String, dynamic> map){
   return User(
     id : map['id'],
     name : map['name'],
     address : map['address'],
   );
 }

//object to map
Map<String, dynamic> toMap(){
  return {
    'id':id,
    'name':name,
    'address':address
  };
}
}