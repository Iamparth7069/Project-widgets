class Models{
  int? id;
  String? name;
  int? age;
  String? email;
  int? date = DateTime.now().millisecondsSinceEpoch;
  Models({required this.name,required this.age,required this.email});

  Models.WithId({this.id, this.name, this.age, this.email, this.date});

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'age': this.age,
      'email': this.email,
      'date': this.date,
    };
  }
  factory Models.fromMap(Map<String, dynamic> map) {
    return Models.WithId(
      id: map['id'] as int,
      name: map['name'] as String,
      age: map['age'] as int,
      email: map['email'] as String,
      date: map['date'] as int,
    );
  }
}