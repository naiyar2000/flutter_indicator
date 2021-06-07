import 'package:flutter/material.dart';

class TechnicalIndictorDropDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFF121212), borderRadius: BorderRadius.circular(5)),
      margin: EdgeInsets.only(top: 20, bottom: 30),
      width: MediaQuery.of(context).size.width * 0.9,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          'Technical Indictor',
          style: TextStyle(color: Colors.white60, fontSize: 18),
        ),
        Icon(Icons.arrow_drop_down, color: Colors.white),
      ]),
    );
  }
}
