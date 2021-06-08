import 'package:flutter/material.dart';
import 'package:flutter_intern/Widgets/oscillatorsList.dart';

class Oscillator extends StatelessWidget {
  final buy;
  final neutral;
  final sell;
  final list;
  final text;
  Oscillator({this.text, this.buy, this.neutral, this.sell, this.list});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Oscillators',
            style: TextStyle(color: Colors.white, fontSize: 20)),
        Container(
            margin: EdgeInsets.only(top: 20, bottom: 10),
            child: TextButton(
                onPressed: () {},
                child:
                    Text(text, style: TextStyle(color: Colors.white)),
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFFF2E50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))))),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Column(children: [
              Text(buy, style: TextStyle(color: Colors.white, fontSize: 20)),
              Text("Buy", style: TextStyle(color: Colors.white60, fontSize: 16))
            ]),
            Column(children: [
              Text(neutral, style: TextStyle(color: Colors.white, fontSize: 20)),
              Text("Neutral",
                  style: TextStyle(color: Colors.white60, fontSize: 16))
            ]),
            Column(children: [
              Text(sell, style: TextStyle(color: Colors.white, fontSize: 20)),
              Text("Sell",
                  style: TextStyle(color: Colors.white60, fontSize: 16))
            ]),
          ]),
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xFF121212), borderRadius: BorderRadius.circular(5)),
          margin: EdgeInsets.only(top: 20),
          width: MediaQuery.of(context).size.width * 0.9,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('Name', style: TextStyle(color: Colors.white60, fontSize: 16)),
            Text('Value',
                style: TextStyle(color: Colors.white60, fontSize: 16)),
            Text('Action',
                style: TextStyle(color: Colors.white60, fontSize: 16)),
          ]),
        ),
        OscillatorsList(list),
      ],
    );
  }
}
