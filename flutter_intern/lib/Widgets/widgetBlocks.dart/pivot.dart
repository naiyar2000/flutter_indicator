import 'package:flutter/material.dart';
import 'package:flutter_intern/Models/TechnicalIndicatorProvider.dart';
import 'package:flutter_intern/Widgets/classicList.dart';
import 'package:provider/provider.dart';

class Pivot extends StatefulWidget {
  @override
  _PivotState createState() => _PivotState();
}

class _PivotState extends State<Pivot> {
  var valueChoose = "Classic";
  var listitem = ["Classic", "Camarilla", "Demark", "Fibonacci", "Woodie"];
  var map = {};

  @override
  Widget build(BuildContext context) {
    final response = Provider.of<TechnicalIndicator>(context).response ?? null;

    return Column(
      children: [
        Text('Pivot Points',
            style: TextStyle(color: Colors.white, fontSize: 20)),
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
        if (valueChoose == "Classic" && response["pivot_points"] != null)
          ClassicList(response["pivot_points"]["classic"]),
        if (valueChoose == "Camarilla" && response["pivot_points"] != null)
          ClassicList(response["pivot_points"]["camarilla"]),
        if (valueChoose == "Demark" && response["pivot_points"] != null)
          ClassicList(response["pivot_points"]["demark"]),
        if (valueChoose == "Fibonacci" && response["pivot_points"] != null)
          ClassicList(response["pivot_points"]["fibonacci"]),
        if (valueChoose == "Woodie" && response["pivot_points"] != null)
          ClassicList(response["pivot_points"]["woodie"])
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
        height: 300,
        child: ListView(
          children: [
            ListTile(
                leading: Icon(Icons.check,
                    color: widget.text == 'Classic'
                        ? Colors.white
                        : Colors.transparent),
                onTap: () {
                  Navigator.pop(context, 'Classic');
                },
                title: Text(
                  'Classic',
                  style: TextStyle(
                      color: widget.text == 'Classic'
                          ? Colors.white
                          : Colors.white60),
                )),
            ListTile(
                leading: Icon(Icons.check,
                    color: widget.text == 'Camarilla'
                        ? Colors.white
                        : Colors.transparent),
                onTap: () {
                  Navigator.pop(context, 'Camarilla');
                },
                title: Text(
                  'Camarilla',
                  style: TextStyle(
                      color: widget.text == 'Camarilla'
                          ? Colors.white
                          : Colors.white60),
                )),
            ListTile(
                leading: Icon(Icons.check,
                    color: widget.text == 'Demark'
                        ? Colors.white
                        : Colors.transparent),
                onTap: () {
                  Navigator.pop(context, 'Demark');
                },
                title: Text(
                  'Demark',
                  style: TextStyle(
                      color: widget.text == 'Demark'
                          ? Colors.white
                          : Colors.white60),
                )),
            ListTile(
                leading: Icon(Icons.check,
                    color: widget.text == 'Fibonacci'
                        ? Colors.white
                        : Colors.transparent),
                onTap: () {
                  Navigator.pop(context, 'Fibonacci');
                },
                title: Text(
                  'Fibonacci',
                  style: TextStyle(
                      color: widget.text == 'Fibonacci'
                          ? Colors.white
                          : Colors.white60),
                )),
            ListTile(
                leading: Icon(Icons.check,
                    color: widget.text == 'Woodie'
                        ? Colors.white
                        : Colors.transparent),
                onTap: () {
                  Navigator.pop(context, 'Woodie');
                },
                title: Text('Woodie',
                    style: TextStyle(
                        color: widget.text == 'Woodie'
                            ? Colors.white
                            : Colors.white60)))
          ],
        ));
  }
}
