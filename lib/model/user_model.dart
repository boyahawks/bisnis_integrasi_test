import 'dart:convert';

class UserModel {
  String? username;
  String? role;
  String? token;
  int? status;

  UserModel({this.username, this.role, this.token, this.status});

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'role': role,
      'token': token,
      'status': status
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      username: map['username'],
      role: map['role'],
      token: map['token'],
      status: map['status']
    );
  }

  String toJson() => json.encode(toMap());

}