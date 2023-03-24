part of 'user_bloc.dart';

@immutable
abstract class UserEvent extends Equatable{}


class add_Task extends UserEvent{

  final Fahadjson fahad_data;

  add_Task({required this.fahad_data});

  @override

  List<Object?> get props =>  [fahad_data];

}


class update_Task extends UserEvent{
  final Fahadjson fahad_data;

  update_Task({required this.fahad_data});

  @override

  List<Object?> get props =>  [fahad_data];

}