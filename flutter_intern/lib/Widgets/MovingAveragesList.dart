import 'package:flutter/material.dart';

class MovingAveragesList extends StatefulWidget {
  const MovingAveragesList({Key? key}) : super(key: key);

  @override
  _MovingAveragesListState createState() => _MovingAveragesListState();
}

class _MovingAveragesListState extends State<MovingAveragesList> {
  List<String> period = ['MA10', 'MA20', 'MA30', 'MA50', 'MA100', 'MA200'];
  List<String> value = [
    '465.28',
    '465.28',
    '465.28',
    '465.28',
    '465.28',
    '465.28'
  ];
  List<String> type = ['SELL', 'SELL', 'BUY', 'BUY', 'SELL', 'BUY'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      margin: EdgeInsets.only(top: 20),
      width: MediaQuery.of(context).size.width * 0.9,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: ListView.builder(
        itemCount: value.length,
        itemBuilder: (_, i) => Container(
          margin: EdgeInsets.only(bottom: 22),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
              child: Text(period[i],
                  style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
            Expanded(
                child: Center(
              child: Text(value[i],
                  style: TextStyle(color: Colors.white, fontSize: 16)),
            )),
            Expanded(
                child: Align(
              alignment: Alignment.centerRight,
              child: Text(type[i],
                  style: TextStyle(
                      color:
                          i == 2 || i == 3 || i == 5 ? Colors.blue : Colors.red,
                      fontSize: 16)),
            )),
          ]),
        ),
      ),
    );
  }
}
