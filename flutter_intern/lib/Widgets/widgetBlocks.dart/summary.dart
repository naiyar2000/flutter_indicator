import 'package:flutter/material.dart';
import 'package:flutter_intern/Widgets/levelIndicator.dart';
import 'package:flutter_intern/Widgets/minButtons.dart';

class Summary extends StatelessWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text('Summary', style: TextStyle(color: Colors.white, fontSize: 20)),
      SizedBox(height: 20),
      Container(
          padding: EdgeInsets.only(left: 50, right: 20),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [LevelIndicator(), MinButtons()])),
    ]);
  }
}
