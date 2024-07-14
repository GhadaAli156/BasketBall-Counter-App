import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:basketballcounterapp/cubit/counter_cubit.dart';
import 'package:basketballcounterapp/cubit/counter_state.dart';

class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit,CounterState>(
      builder: (context, state) {
      return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: const Text('Basketball Score Counter',style: TextStyle(fontWeight: FontWeight.bold),),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text('TEAM A',style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold
                      ),),
                      Text('${BlocProvider.of<CounterCubit>(context).teamAPoints}',style: const TextStyle(
                          fontSize: 90
                      ),),
                      Container(
                        width: 120,
                        child: MaterialButton(onPressed: (){
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(team: 'A', buttonNumber: 1);
                        },height: 50,
                          child: Text('+1 point',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),color: Colors.blue,),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 120,
                          child: MaterialButton(onPressed: (){
                            BlocProvider.of<CounterCubit>(context).TeamIncrement(team: 'A', buttonNumber: 2);
                          },height: 50,child: Text('+2 point',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),color: Colors.blue,),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 120,
                          child: MaterialButton(onPressed: (){
                            BlocProvider.of<CounterCubit>(context).TeamIncrement(team: 'A', buttonNumber: 3);

                          },height: 50,child: Text('+3 point',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),color: Colors.blue,),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 300,child: VerticalDivider(color: Colors.grey,thickness: 1,)),
                  Column(
                    children: [
                      Text('TEAM B',style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold
                      ),),
                      Text('${BlocProvider.of<CounterCubit>(context).teamBPoints}',style: TextStyle(
                          fontSize: 90
                      ),),

                      Container(
                        width: 120,
                        child: MaterialButton(onPressed: (){
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(team: 'B', buttonNumber: 1);
                        },height: 50,child: Text('+1 point',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),color: Colors.blue,),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 120,
                          child: MaterialButton(onPressed: (){
                            BlocProvider.of<CounterCubit>(context).TeamIncrement(team: 'B', buttonNumber: 2);
                          },height: 50,child: Text('+2 point',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),color: Colors.blue,),
                        ),
                      ),

                      Container(
                        width: 120,
                        child: MaterialButton(onPressed: (){
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(team: 'B', buttonNumber: 3);
                        },height: 50,child: Text('+3 point',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),color: Colors.blue,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(flex: 1,),
            Container(
              width: 120,
              child: MaterialButton(
                onPressed: (){
                BlocProvider.of<CounterCubit>(context).ResetState();
              },height: 50,color: Colors.grey,child: Text('RESET',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),),
            ),
            Spacer(flex: 3,)
          ],
        ),
      );
    },
      listener: (context, state) {
    },);
  }
}