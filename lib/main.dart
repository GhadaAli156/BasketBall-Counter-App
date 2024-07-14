import 'package:basketballcounterapp/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/counter_cubit.dart';

void main() {
  runApp(
      BlocProvider(
        create: (context) => CounterCubit(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MyHome(),
        ),
      )
  );
}