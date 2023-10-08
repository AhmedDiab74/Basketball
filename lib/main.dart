// ignore_for_file: must_be_immutable

import 'package:first/cubit/counter_cubit.dart';
import 'package:first/screens/home_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BasketBall());
}

class BasketBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()),
    );
  }
}
