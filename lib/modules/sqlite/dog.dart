class Dog {
  final String name;
  final int age;

  Dog({
    required this.name,
    required this.age,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'age': age,
    };
  }

  factory Dog.fromMap(Map<String, dynamic> map) {
    return Dog(
      name: map['name'],
      age: map['age'],
    );
  }

  @override
  String toString() {
    return 'Dog{name: $name, age: $age}';
  }
}
