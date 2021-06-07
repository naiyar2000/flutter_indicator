import 'package:flutter/material.dart';

class ExponentialDropDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFF121212), borderRadius: BorderRadius.circular(5)),
      margin: EdgeInsets.only(top: 20),
      width: 130,
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text('Exponential',
            style: TextStyle(color: Colors.white60, fontSize: 18)),
        Icon(Icons.arrow_drop_down, color: Colors.white),
      ]),
    );
  }
}
