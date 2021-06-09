import 'package:flutter/material.dart';
import 'package:flutter_intern/Models/TechnicalIndicatorProvider.dart';
import 'package:provider/provider.dart';

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
  List<String> query = [
    '1min',
    '5min',
    '15min',
    '30min',
    '1hour',
    '5hour',
    'daily',
    'monthly',
    'weekly'
  ];
  int selectedButton = 0;
  @override
  Widget build(BuildContext context) {
    final tech = Provider.of<TechnicalIndicator>(context);

    return Container(
      padding: EdgeInsets.only(top: 10),
      height: MediaQuery.of(context).size.height * 0.62,
      width: 80,
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (_, i) => Container(
                margin: EdgeInsets.only(bottom: 7),
                height: 45,
                width: 52,
                child: TextButton(
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: selectedButton == i
                                ? BorderSide(color: Colors.white, width: 2)
                                : BorderSide(color: Colors.white60, width: 2))),
                    onPressed: () {
                      tech.changeUi(query[i]);
                      setState(() {
                        selectedButton = i;
                      });
                    },
                    child: Text(
                      items[i],
                      style: TextStyle(
                          color: selectedButton == i
                              ? Colors.white
                              : Colors.white60),
                    )),
              )),
    );
  }
}
