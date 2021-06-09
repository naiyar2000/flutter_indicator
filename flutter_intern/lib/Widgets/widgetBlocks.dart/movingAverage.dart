import 'package:flutter/material.dart';
import 'package:flutter_intern/Models/TechnicalIndicatorProvider.dart';
import 'package:flutter_intern/Widgets/MovingAveragesList.dart';
import 'package:provider/provider.dart';

class MovingAverage extends StatefulWidget {
  @override
  _MovingAverageState createState() => _MovingAverageState();
}

class _MovingAverageState extends State<MovingAverage> {
  var valueChoose = "Exponential";
  var listitem = ["Exponential", "Simple"];

  @override
  Widget build(BuildContext context) {
    final response = Provider.of<TechnicalIndicator>(context).response ?? null;

    String movingBuy = "";
    String movingSell = "";
    var exponentialList = [];
    var simpleList = [];
    if (response["moving_averages"] != null) {
      movingBuy = response["moving_averages"]["buy"] ?? "";
      movingSell = response["moving_averages"]["sell"] ?? "";
      exponentialList =
          response["moving_averages"]["table_data"]["exponential"];
      print(exponentialList);
      simpleList = response["moving_averages"]["table_data"]["simple"];
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Moving Averages',
            style: TextStyle(color: Colors.white, fontSize: 20)),
        Container(
            margin: EdgeInsets.only(top: 20, bottom: 10),
            child: TextButton(
                onPressed: () {},
                child: Text("Buy", style: TextStyle(color: Colors.white)),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))))),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Column(children: [
              Text(movingBuy,
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              Text("Buy", style: TextStyle(color: Colors.white60, fontSize: 16))
            ]),
            Column(children: [
              Text("-", style: TextStyle(color: Colors.white, fontSize: 20)),
              Text("Neutral",
                  style: TextStyle(color: Colors.white60, fontSize: 16))
            ]),
            Column(children: [
              Text(movingSell,
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              Text("Sell",
                  style: TextStyle(color: Colors.white60, fontSize: 16))
            ]),
          ]),
        ),
        // ExponentialDropDown(),
        InkWell(
          onTap: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => MovingList(valueChoose)).then((value) {
              setState(() {
                valueChoose = value;
              });
            });
          },
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xFF121212),
                borderRadius: BorderRadius.circular(5)),
            margin: EdgeInsets.only(top: 20),
            width: 130,
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(valueChoose,
                      style: TextStyle(color: Colors.white60, fontSize: 18)),
                  Icon(Icons.arrow_drop_down, color: Colors.white),
                ]),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xFF121212), borderRadius: BorderRadius.circular(5)),
          margin: EdgeInsets.only(top: 20),
          width: MediaQuery.of(context).size.width * 0.9,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('Period',
                style: TextStyle(color: Colors.white60, fontSize: 16)),
            Text('Value',
                style: TextStyle(color: Colors.white60, fontSize: 16)),
            Text('Type', style: TextStyle(color: Colors.white60, fontSize: 16)),
          ]),
        ),
        valueChoose == "Exponential"
            ? MovingAveragesList(exponentialList)
            : MovingAveragesList(simpleList),
      ],
    );
  }
}

class MovingList extends StatefulWidget {
  final text;
  MovingList(this.text);

  @override
  MovingListState createState() => MovingListState();
}

class MovingListState extends State<MovingList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xFF121212),
        height: 150,
        child: ListView(
          children: [
            ListTile(
                leading: Icon(Icons.check, color: widget.text == 'Exponential' ? Colors.white: Colors.transparent),
                onTap: () {
                  Navigator.pop(context, 'Exponential');
                },
                title: Text(
                  'Exponential',
                  style: TextStyle(
                      color: widget.text == "Exponential"
                          ? Colors.white
                          : Colors.white60),
                )),
            ListTile(
                leading: Icon(Icons.check, color: widget.text == 'Simple' ? Colors.white: Colors.transparent),
                onTap: () {
                  Navigator.pop(context, 'Simple');
                },
                title: Text('Simple',
                    style: TextStyle(
                        color: widget.text == "Simple"
                            ? Colors.white
                            : Colors.white60)))
          ],
        ));
  }
}
