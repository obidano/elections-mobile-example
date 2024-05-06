

import 'package:elections/user/business/interactors/AuthenticateUseCase.dart';
import 'package:elections/user/business/interactors/UserInteractor.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "loginCtrl.g.dart";

@riverpod
class LoginCtrl extends _$LoginCtrl{
  late AuthenticateUseCase authenticateUseCase;

  @override
  bool build(){
    var interactor=ref.watch(userInteractorProvider);
    authenticateUseCase=interactor.authenticateUseCase;
    return false;
  }

  Future<bool> soumettreFormulaire(data) async{
    state=true;
    var token= await  authenticateUseCase.run(data);
    state=false;
    print("token reçu $token");
    return token!= "";
  }

}