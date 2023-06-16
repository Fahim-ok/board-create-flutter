


import 'package:flutter/material.dart';

class ChessBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chess Board'),
      ),
      body: Container(
        // padding: EdgeInsets.all(8.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: List.generate(8, (row) {
            return Expanded(
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: List.generate(8, (col) {
                  final bool isWhiteSquare = (row + col) % 2 == 0;

                  return Expanded(
                    child: Container(
                      color: isWhiteSquare ? Colors.white : Colors.black,
                      child: null,
                    ),
                  );
                }),
              ),
            );
          }),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ChessBoard(),
  ));
}



