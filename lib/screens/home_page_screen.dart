import 'package:first/cubit/counter_cubit.dart';
import 'package:first/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                "Basketball",
                style: TextStyle(fontSize: 25),
              ),
              backgroundColor: Colors.orange,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Team A",
                          style: TextStyle(fontSize: 50),
                        ),
                        Text(
                          "${BlocProvider.of<CounterCubit>(context).scoreA}",
                          style: const TextStyle(fontSize: 150),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'A', buttonNumber: 1);
                            },
                            child: const Text(
                              "Add 1 Point",
                              style: TextStyle(fontSize: 20),
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'A', buttonNumber: 2);
                            },
                            child: const Text(
                              "Add 2 Point",
                              style: TextStyle(fontSize: 20),
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'A', buttonNumber: 3);
                            },
                            child: const Text(
                              "Add 3 Point",
                              style: TextStyle(fontSize: 20),
                            )),
                      ],
                    ),
                    Container(
                      height: 500,
                      child: const VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 60,
                        endIndent: 50,
                        width: 50,
                      ),
                    ),
                    Column(
                      children: [
                        const Text(
                          "Team B",
                          style: TextStyle(fontSize: 50),
                        ),
                        Text(
                          "${BlocProvider.of<CounterCubit>(context).scoreB}",
                          style: const TextStyle(fontSize: 150),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'B', buttonNumber: 1);
                            },
                            child: const Text(
                              "Add 1 Point",
                              style: TextStyle(fontSize: 20),
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'B', buttonNumber: 2);
                            },
                            child: const Text(
                              "Add 2 Point",
                              style: TextStyle(fontSize: 20),
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'B', buttonNumber: 3);
                            },
                            child: const Text(
                              "Add 3 Point",
                              style: TextStyle(fontSize: 20),
                            )),
                      ],
                    ),
                  ],
                ),
                const Divider(thickness: 0.005, height: 60),
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).Reset();
                  },
                  child: const Text(
                    "Reset",
                    style: TextStyle(fontSize: 25),
                  ),
                )
              ],
            ),
          );
        },
        listener: (context, state) {});
  }
}
