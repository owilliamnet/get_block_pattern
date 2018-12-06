import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:get_block_patthern/increment/increment-controller.dart';
import 'package:get_block_patthern/increment/increment-widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<IncrementController>(
      child: MaterialApp(
        home: HomeWidget(),
      ),
      bloc: IncrementController(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IncrementWidget();
  }
}
