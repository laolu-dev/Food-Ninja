// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class User {
  String username;
  String firstname;
  String lastname;
  String phoneNo;
  String email;
  String paymentMethod;
  String location;

  User({
    required this.username,
    required this.firstname,
    required this.lastname,
    required this.phoneNo,
    required this.email,
    required this.paymentMethod,
    required this.location,
  });

  User copyWith({
    String? username,
    String? firstname,
    String? lastname,
    String? phoneNo,
    String? email,
    String? paymentMethod,
    String? location,
  }) {
    return User(
      username: username ?? this.username,
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      phoneNo: phoneNo ?? this.phoneNo,
      email: email ?? this.email,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      location: location ?? this.location,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'firstname': firstname,
      'lastname': lastname,
      'phoneNo': phoneNo,
      'email': email,
      'paymentMethod': paymentMethod,
      'location': location,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      username: map['username'] as String,
      firstname: map['firstname'] as String,
      lastname: map['lastname'] as String,
      phoneNo: map['phoneNo'] as String,
      email: map['email'] as String,
      paymentMethod: map['paymentMethod'] as String,
      location: map['location'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(username: $username, firstname: $firstname, lastname: $lastname, phoneNo: $phoneNo, email: $email, paymentMethod: $paymentMethod, location: $location)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;
  
    return 
      other.username == username &&
      other.firstname == firstname &&
      other.lastname == lastname &&
      other.phoneNo == phoneNo &&
      other.email == email &&
      other.paymentMethod == paymentMethod &&
      other.location == location;
  }

  @override
  int get hashCode {
    return username.hashCode ^
      firstname.hashCode ^
      lastname.hashCode ^
      phoneNo.hashCode ^
      email.hashCode ^
      paymentMethod.hashCode ^
      location.hashCode;
  }
}
