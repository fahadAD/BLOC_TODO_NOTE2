import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:untitled14/decode.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {



  UserBloc() : super(UserState()) {

   on<add_Task>(_onadd_Task);

   on<update_Task>(_onupdate_Task);



  }


  // add_Task
  void _onadd_Task(add_Task event, Emitter<UserState> emit) {

    final stateS=this.state;

 emit(UserState(

  fahad_datas: List.from(stateS.fahad_datas)..add(event.fahad_data),


));

  }



// update_Task
  void _onupdate_Task(update_Task event, Emitter<UserState> emit) {

    final stateS=this.state;

    emit(UserState(

      fahad_datas: List.from(stateS.fahad_datas)..add(event.fahad_data),


    ));


  }





}
