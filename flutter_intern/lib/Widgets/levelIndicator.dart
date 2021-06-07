import 'package:flutter/material.dart';

class LevelIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      height: deviceHeight * 0.5,
      child: Column(children: [
        Flexible(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              color: Color(0xFF007AFF),
            ),
            width: 10,
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            color: Color(0xFF050a94),
            width: 10,
          ),
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
                width: 16,
              ),
            ),
            // Positioned(
            //   top: 25,
            //   left: 5,
            //   child: Icon(Icons.arrow_left, color: Color(0xFFFFB946), size: 30),
            // ),
            Positioned(
              top: 20,
              left: 30,
              child: Container(
                height: 30,
                width: 80,
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Color(0xFFFFB946),
                    ),
                    child: Center(child: Text('Neutral'))),
              ),
            )
          ]),
        ),
        Flexible(
          flex: 1,
          child: Container(
            width: 10,
            color: Color(0xFFac0606),
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              color: Color(0xFFFF2E50),
            ),
            width: 10,
          ),
        ),
      ]),
    );
  }
}
