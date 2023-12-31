class User1 {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;
  User1({
      this.id, 
      this.email, 
      this.firstName, 
      this.lastName, 
      this.avatar,});

  User1.fromJson(Map<String,dynamic> json) {
    id = json['id'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    avatar = json['avatar'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['email'] = email;
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['avatar'] = avatar;
    return map;
  }

}