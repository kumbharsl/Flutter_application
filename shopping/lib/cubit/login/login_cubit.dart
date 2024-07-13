import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:shopping/network_manager/rest_client.dart';
import 'package:shopping/screens/login_screen/bottom_bar_tab.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  login(
      {required String email,
      required String password,
      required BuildContext context}) {
    emit(LoginLoading());
    Map requestBody = {"email": "john@mail.com", "password": "changeme"};
    RestClient.login(requestBody).then((value) {
      emit(LoginLoaded());
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => BottomBarTab()));
    }).onError((error, StackTrace) {
      emit(LoginError());
    });
  }
}
