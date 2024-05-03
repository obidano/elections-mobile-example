
import 'package:elections/user/business/service/UserNetworkService.dart';

class CreateUserUseCase{
  UserNetworkService service;

 CreateUserUseCase({
    required this.service
  });

  Future<String> run(data){
    return service.createUser(data);
  }
}