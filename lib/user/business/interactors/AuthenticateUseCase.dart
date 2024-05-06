

import '../service/UserLocalService.dart';
import '../service/UserNetworkService.dart';

class AuthenticateUseCase{

  UserNetworkService service;
  UserLocalService local;

  AuthenticateUseCase(
      this.service,
      this.local);

  Future<String> run(data) async{
    var token= await service.authenticate(data);
    local.saveToken(token);
    return token;
  }

}