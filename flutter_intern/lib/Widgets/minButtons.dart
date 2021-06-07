import 'package:flutter/material.dart';

class MinButtons extends StatefulWidget {
  @override
  _MinButtonsState createState() => _MinButtonsState();
}

class _MinButtonsState extends State<MinButtons> {
  List<String> items = [
    '1 MIN',
    '5 MIN',
    '15 MIN',
    '30 MIN',
    '1 HR',
    '5 HR',
    '1 DAY',
    '1 WK',
    '1 MON'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      height: MediaQuery.of(context).size.height * 0.62,
      width: 80,
      child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (_, i) => Container(
                margin: EdgeInsets.only(bottom: 7),
                height: 45,
                width: 52,
                child: TextButton(
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: i == 0
                                ? BorderSide(color: Colors.white, width: 2)
                                : BorderSide(color: Colors.white60, width: 2))),
                    onPressed: () {},
                    child: Text(
                      items[i],
                      style: TextStyle(
                          color: i == 0 ? Colors.white : Colors.white60),
                    )),
              )),
    );
  }
}
