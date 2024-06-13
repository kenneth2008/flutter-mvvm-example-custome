import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {

  UserModel({
    this.message = "",
    this.users = const [],
  }) {

  }

  String message = "";
  List<User> users = <User>[];

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    message: json["message"],
    users: List<User>.from(json["users"].map((x) => User.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "users": List<dynamic>.from(users.map((x) => x.toJson())),
  };
}

class User {
  User({
    this.userId = "",
    this.userName = "",
    this.userPhone = "",
    this.userNote = "",
  });

  String? userId;
  String? userName;
  String? userPhone;
  String? userNote;

  factory User.fromJson(Map<String, dynamic> json) => User(
    userId: "${json["userId"]}",
    userName: json["userName"],
    userPhone: json["userPhone"],
    userNote: json["userNote"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "userName": userName,
    "userPhone": userPhone,
    "userNote": userNote,
  };

}
