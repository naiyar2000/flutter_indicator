import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intern/Models/TechnicalIndicatorProvider.dart';
import 'package:provider/provider.dart';

class LevelIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final response = Provider.of<TechnicalIndicator>(context).response;
    var abc = "";
    if (response["summary"] != null)
      abc = response["summary"]["summary_text"] ?? "";
    final deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      height: deviceHeight * 0.5,
      child: Column(children: [
        Flexible(
          flex: 1,
          child: Stack(overflow: Overflow.visible, children: [
            Positioned(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: Color(0xFF007AFF),
                ),
                width: abc == "Strong Buy" ? 16 : 10,
              ),
            ),
            if (abc == "Strong Buy")
              Positioned(
                top: 20,
                left: 25,
                child: Bubble(
                  nip: BubbleNip.leftBottom,
                  color: Color(0xFF007AFF),
                  child: Text('Strong Buy'),
                ),
              )
          ]),
        ),
        Flexible(
          flex: 1,
          child: Stack(overflow: Overflow.visible, children: [
            Positioned(
              child: Container(
                color: Color(0xFF050a94),
                width: abc == "Buy" ? 16 : 10,
              ),
            ),
            if (abc == "Buy")
              Positioned(
                top: 20,
                left: 25,
                child: Bubble(
                  nip: BubbleNip.leftBottom,
                  color: Color(0xFF050a94),
                  child: Text('Buy'),
                ),
              )
          ]),
        ),
        Flexible(
          flex: 1,
          child: Stack(overflow: Overflow.visible, children: [
            Positioned(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Color(0xFFFFB946),
                ),
                width: abc == "Neutral" ? 16 : 10,
              ),
            ),
            if (abc == "Neutral")
              Positioned(
                top: 20,
                left: 25,
                child: Bubble(
                  nip: BubbleNip.leftCenter,
                  color: Color(0xFFFFB946),
                  child: Text('Neutral'),
                ),
              )
          ]),
        ),
        Flexible(
          flex: 1,
          child: Stack(overflow: Overflow.visible, children: [
            Positioned(
              child: Container(
                width: abc == "Sell" ? 16 : 10,
                color: Color(0xFFac0606),
              ),
            ),
            if (abc == "Sell")
              Positioned(
                top: 20,
                left: 25,
                child: Bubble(
                  nip: BubbleNip.leftTop,
                  color: Color(0xFFac0606),
                  child: Text('Sell'),
                ),
              )
          ]),
        ),
        Flexible(
          flex: 1,
          child: Stack(overflow: Overflow.visible, children: [
            Positioned(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Color(0xFFFF2E50),
                ),
                width: abc == "Strong Sell" ? 16 : 10,
              ),
            ),
            if (abc == "Strong Sell")
              Positioned(
                top: 20,
                left: 25,
                child: Bubble(
                  nip: BubbleNip.leftTop,
                  color: Color(0xFFFF2E50),
                  child: Text('Strong Sell'),
                ),
              )
          ]),
        ),
      ]),
    );
  }
}
