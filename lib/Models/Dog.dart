class Dog {
  final int id;
  final String name;
  final String age;

  Dog({this.id, this.name, this.age});

  ///
  ///Map Methods
  ///
  //to be used when inserting a row in the table
  Map<String, dynamic> toMapWithoutId() {
    final map = new Map<String, dynamic>();
    map["name"] = name;
    map["age"] = age;
    return map;
  }

  Map<String, dynamic> toMap() {
    final map = new Map<String, dynamic>();
    map["id"] = id;
    map["name"] = name;
    map["age"] = age;
    return map;
  }

  //to be used when converting the row into object
  factory Dog.fromMap(Map<String, dynamic> data) =>
      new Dog(id: data['id'], name: data['name'], age: data['age']);
}
