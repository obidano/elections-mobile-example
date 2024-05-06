import 'package:elections/pages/intro/introPage.dart';
import 'package:elections/user/business/interactors/UserInteractor.dart';
import 'package:elections/user/ui/framework/UserLocalServiceImplV1.dart';
import 'package:elections/user/ui/framework/UserNetworkServiceImplV1.dart';
import 'package:elections/user/ui/pages/login/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main(){
 var userNetwork=UserNetworkServiceImplV1();
 var userLocal=UserLocalServiceImplV1();

 var userInteractor=UserInteractor.build(userNetwork, userLocal);


  runApp(ProviderScope(
      overrides: [
        userInteractorProvider.overrideWithValue(userInteractor)
      ],
      child:  MonApplication()
  ) );
}

class MonApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage()
    );
  }

}