part of 'user_bloc.dart';

@immutable
 class UserState extends Equatable{

  List<Fahadjson> fahad_datas=[];

  UserState({this.fahad_datas=const<Fahadjson>[]});

  @override

  List<Object?> get props =>  [fahad_datas];
}

