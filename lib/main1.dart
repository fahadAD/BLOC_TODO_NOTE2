import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:untitled14/BLOC/user_bloc.dart';
  import 'package:untitled14/custom.dart';
import 'package:untitled14/decode.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

final TextEditingController tittle_Controller=TextEditingController();
final TextEditingController description_Controller=TextEditingController();


     return Scaffold(

floatingActionButton: FloatingActionButton(
    onPressed:  (){
  showDialog(context: context, builder:  (context){
    return AlertDialog(
      content: Container(
        width: 200,
        height: 200,
        child:  DialougeScreen(),
      ),

    );
  });
},child: Icon(Icons.add)),

       appBar: AppBar(),


       body: BlocBuilder<UserBloc,UserState>(
           builder: (context, state) {
         List<Fahadjson> fahad_list=state.fahad_datas;

             return ListView.builder(
               primary: false,
               shrinkWrap: true,
               itemCount: fahad_list.length,
               itemBuilder: (BuildContext context, int index) {
                 var data=fahad_list[index];

                 return Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Card(
                     elevation: 20,
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: ListTile(

                         onTap: (){

                           tittle_Controller.text=data.name ?? "";
                           description_Controller.text=data.description ?? "";

                           showDialog(context: context, builder: (_){

                             return AlertDialog(

                                     content: Column(
                                       children: [

                                         Padding(
                                           padding: const EdgeInsets.all(8.0),
                                           child: TextFormField(
                                             controller: tittle_Controller,
                                           ),
                                         ),

                                         SizedBox(
                                           height: 5,
                                         ),

                                         Padding(
                                           padding: const EdgeInsets.all(8.0),
                                           child: TextFormField(
                                             controller: description_Controller,
                                           ),
                                         ),

                                         SizedBox(
                                           height: 5,
                                         ),

                                         Padding(
                                           padding: const EdgeInsets.all(8.0),
                                           child: ElevatedButton(onPressed:  (){

                                             var to_DO_update_task=Fahadjson(
                                              id: data.id,
                                               name: tittle_Controller.text,
                                               description: description_Controller.text,
                                               datetime: DateFormat().add_jm().format(DateTime.now()),
                                             );

                                             context.read<UserBloc>().add(update_Task(fahad_data: to_DO_update_task));
                                             Navigator.pop(context);

                                           }, child: Text("Update")),
                                         )





                                       ],
                                     ),

                               title: Text("Update"),

                             );
                            });
                         },


                         title:  Text("${data.name}"),
                         subtitle:  Text("${data.description}"),
                         trailing:  Text("${data.datetime}"),

                       ),
                     ),
                   ),
                 );
               },

             );
           },),




     );
  }
}
