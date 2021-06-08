import 'package:flutter/material.dart';
import 'package:flutter_intern/Models/TechnicalIndicatorProvider.dart';
import 'package:flutter_intern/Widgets/TechnicalIndictor.dart';
import 'package:flutter_intern/Widgets/widgetBlocks.dart/movingAverage.dart';
import 'package:flutter_intern/Widgets/widgetBlocks.dart/oscillator.dart';
import 'package:flutter_intern/Widgets/widgetBlocks.dart/pivot.dart';
import 'package:flutter_intern/Widgets/widgetBlocks.dart/summary.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool _isinit = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    if (_isinit) {
      Provider.of<TechnicalIndicator>(context).fetchData();
    }
    _isinit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var buy = "";
    var sell = "";
    var neutral = "";
    var oscillatorList = [];
    var text = "";
    final response = Provider.of<TechnicalIndicator>(context).response;
    if (response["technical_indicator"] != null) {
      oscillatorList = response["technical_indicator"]["table_data"];
      buy = response["technical_indicator"]["buy"];
      sell = response["technical_indicator"]["sell"];
      neutral = response["technical_indicator"]["neutral"];
      text = response["technical_indicator"]["text"];
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                  padding: EdgeInsets.only(left: 25, top: 15),
                  child: Row(children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    SizedBox(width: 20),
                    Text("USD / INR",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w400))
                  ])),
              TechnicalIndictorDropDown(),
              Summary(),
              MovingAverage(),
              Oscillator(
                sell: sell,
                buy: buy,
                neutral: neutral,
                list: oscillatorList,
                text: text,
              ),
              Pivot()
            ]),
          ),
        ),
      ),
    );
  }
}
