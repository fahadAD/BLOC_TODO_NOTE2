import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled14/BLOC/user_bloc.dart';
import 'package:untitled14/decode.dart';

class DialougeScreen extends StatelessWidget {
  const DialougeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
final TextEditingController name_controller=TextEditingController();
final TextEditingController description_controller=TextEditingController();

    return  Column(
      children: [

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
                controller: name_controller,
          ),
        ),

        SizedBox(
  height: 5,
),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: description_controller,
          ),
        ),

        SizedBox(
          height: 5,
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed:  (){

             var to_DO_add_task=Fahadjson(
               id: Random().nextInt(100),
              name: name_controller.text,
               description: description_controller.text,
               datetime:  DateFormat().add_jm().format(DateTime.now()),

             );

            context.read<UserBloc>().add(add_Task(fahad_data: to_DO_add_task));
            Navigator.pop(context);

          }, child: Text("submit")),
        )


      ],
    );
  }
}

