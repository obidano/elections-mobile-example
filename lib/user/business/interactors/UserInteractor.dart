
import 'package:elections/user/business/interactors/AuthenticateUseCase.dart';
import 'package:elections/user/business/service/UserLocalService.dart';
import 'package:elections/user/business/service/UserNetworkService.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'SetNewtPasswordUseCase.dart';
part 'UserInteractor.g.dart';

class UserInteractor{
  AuthenticateUseCase authenticateUseCase;
  SetNewtPasswordUseCase setNewPasswordUseCase;

  UserInteractor(
      this.authenticateUseCase,
      this.setNewPasswordUseCase
      );

  factory UserInteractor.build(
      UserNetworkService networkService,
      UserLocalService localService
  ){

    return UserInteractor(
      AuthenticateUseCase(networkService, localService),
      SetNewtPasswordUseCase(networkService)
    );
  }

}

@Riverpod(keepAlive: true)
UserInteractor userInteractor(Ref ref){
  throw UnimplementedError();
}