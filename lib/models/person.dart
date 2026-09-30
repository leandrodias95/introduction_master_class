import 'package:equatable/equatable.dart';

class Person extends Equatable {
  final int id;
  final String name;
  final String email;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Person && runtimeType == other.runtimeType &&
              id == other.id && name == other.name && email == other.email;

  @override
  int get hashCode => Object.hash(id, name, email);

  const Person({
    required this.id,
    required this.name,
    required this.email,
  });

  @override
  String toString() {
    return 'Person{id: $id, name: $name, email: $email}';
  }

  Person copyWith({
    int? id,
    String? name,
    String? email,
  }) {
    return Person(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }

  @override
  List<Object?> get props => [id, name, email];

}


