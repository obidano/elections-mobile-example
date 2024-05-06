


import 'package:elections/user/business/model/user/User.dart';
import 'package:elections/user/business/service/UserLocalService.dart';

class UserLocalServiceImplV1 implements UserLocalService{
  @override
  Future disconnect() {
    // TODO: implement disconnect
    throw UnimplementedError();
  }

  @override
  Future<String> getToken() {
    // TODO: implement getToken
    throw UnimplementedError();
  }

  @override
  Future<User> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future saveToken(token) async {
    print("Token sauvegardé");
    await Future.delayed(Duration(seconds: 1));
    return;
  }

  @override
  Future saveUser(user) {
    // TODO: implement saveUser
    throw UnimplementedError();
  }
  
}