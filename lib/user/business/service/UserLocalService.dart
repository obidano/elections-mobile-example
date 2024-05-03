// TODO: deconnexion user
import '../model/user/User.dart';

abstract class UserLocalService{
  Future<dynamic> saveUser(user);
  Future<dynamic> saveToken(token);

  Future<User> getUser();
  Future<String> getToken();

  Future<dynamic> disconnect();


}