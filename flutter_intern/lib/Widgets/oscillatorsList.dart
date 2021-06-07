import 'package:flutter/material.dart';

class OscillatorsList extends StatefulWidget {
  const OscillatorsList({Key? key}) : super(key: key);

  @override
  _OscillatorsListState createState() => _OscillatorsListState();
}

class _OscillatorsListState extends State<OscillatorsList> {
  List<String> name = [
    'RSI (14)',
    'CCI(20)',
    'ADI(14)',
    'Awesome Oscillator',
    'Momentum (10)',
    'Stochastic RSI Fast (3, 3, 14, 14)',
    'Williams %R (14)',
    'Bull Bear Power',
    'Ultimate Oscillator (7, 14, 28)'
  ];
  List<String> value = [
    '-53.6549',
    '-53.6549',
    '-53.6549',
    '-53.6549',
    '-53.6549',
    '-53.6549',
    '-53.6549',
    '-53.6549',
    '-53.6549',
  ];
  List<String> action = [
    'NEUTRAL',
    'SELL',
    'BUY',
    'SELL',
    'SELL',
    'SELL',
    'SELL',
    'SELL',
    'LESS VOLATAILE'
  ];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
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
              child: Container(
                child: Text(name[i],
                    style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: Text(value[i],
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(action[i],
                      style: TextStyle(
                          color: i == 2
                              ? Colors.blue
                              : i == 0
                                  ? Colors.orange
                                  : i == 8
                                      ? Colors.white60
                                      : Colors.red,
                          fontSize: 16)),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
