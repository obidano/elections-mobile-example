// To parse this JSON data, do
//
//     final updateUserRequest = updateUserRequestFromJson(jsonString);

import 'dart:convert';


String updateUserRequestToJson(UpdateUserRequest data) => json.encode(data.toJson());

class UpdateUserRequest {
  String email;
  String phone;

  UpdateUserRequest({
    required this.email,
    required this.phone,
  });

  Map<String, dynamic> toJson() => {
    "email": email,
    "telephone": phone
  };
}
