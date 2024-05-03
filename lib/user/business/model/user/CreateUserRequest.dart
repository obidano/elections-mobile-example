
class CreateUserRequest{
  String name;
  String email;
  String phone;
  String password;
  String confirmPassword;

  CreateUserRequest({
    required this.name,
    this.email="",
    this.phone="",
    required this.password,
    required this.confirmPassword,
  });

  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "telephone": phone,
    "password": password,
    "confirmPassword": confirmPassword
  };

}