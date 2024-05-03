
import 'package:elections/user/business/model/user/CreateUserRequest.dart';
import 'package:elections/user/business/model/user/UpdateUserRequest.dart';
import 'package:elections/user/business/model/user/User.dart';
import 'package:elections/user/business/service/UserNetworkService.dart';

class UserNetworkV2 implements UserNetworkService{
  @override
  Future<String> authenticate(data) {
    // TODO: implement authenticate
    throw UnimplementedError();
  }

  @override
  Future confirmResetPasswordOTPCode(data) {
    // TODO: implement confirmResetPasswordOTPCode
    throw UnimplementedError();
  }

  @override
  Future<String> createUser(CreateUserRequest data) {
    print("Create user V2");
    return Future.value("eueuueuueee");
  }

  @override
  Future<User> getUser(String token) {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future requestPasswordReset(data) {
    // TODO: implement requestPasswordReset
    throw UnimplementedError();
  }

  @override
  Future setNewPassword(data) {
    // TODO: implement setNewPassword
    throw UnimplementedError();
  }

  @override
  Future updatePassword(token, data) {
    // TODO: implement updatePassword
    throw UnimplementedError();
  }

  @override
  Future<bool> updateUser(String token, UpdateUserRequest data) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }

}