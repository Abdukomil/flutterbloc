import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/counter/counter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App"),),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text('counter value ${state.counterValue}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),);
              },
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  return context.read<CounterBloc>().add(
                      CounterDecrementEvent());
                }, child: Text("-- Decriese"),),
                SizedBox(width: 30,),
                ElevatedButton(onPressed: () {
                  return context.read<CounterBloc>().add(
                      CounterIncrementEvent());
                }, child: Text("+ Increase"),)
              ],),
          ],
        ),
      ),
    );
  }
}