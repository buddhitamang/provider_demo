class User {
  late String id;
  late String fullName;
  late String address;

  User({required this.id, required this.fullName, required this.address});

  //map to object
  User.fromJson(Map<String, dynamic> map){
    this.id = map['id'];
    this.fullName = map['fullName'];
    this.address = map['address'];
  }

  //object to map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'fullName': fullName,
      'address': address,
    };
  }
}