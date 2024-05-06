

import 'package:elections/user/business/service/UserNetworkService.dart';

class SetNewtPasswordUseCase{
  UserNetworkService service;

  SetNewtPasswordUseCase(this.service);

  Future<dynamic> run(data){
   return service.setNewPassword(data);
  }
}