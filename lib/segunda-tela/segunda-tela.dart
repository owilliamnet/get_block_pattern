import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:get_block_patthern/increment/increment-controller.dart';
import 'package:get_block_patthern/terceira-tela/terceira-tela.dart';

class SegundaTelaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final IncrementController bloc =
        BlocProvider.of<IncrementController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Tela'),
      ),
      body: StreamBuilder(
        stream: bloc.outCounter,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Center(
            child: RaisedButton(
              child: Text('O valor do counter é ${snapshot.data}'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TerceiraTelaWidget()));
              },
            ),
          );
        },
      ),
    );
  }
}
