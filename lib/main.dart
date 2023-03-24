import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
     import 'package:untitled14/main1.dart';
import 'package:untitled14/custom.dart';
import 'package:untitled14/main3.dart';

import 'BLOC/user_bloc.dart';

void main() async{

  runApp(const MyApp());
}

 class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
    return BlocProvider(create: (context) => UserBloc(),
       child: MaterialApp(
         home: Home(),
       ),
    );
   }
 }
