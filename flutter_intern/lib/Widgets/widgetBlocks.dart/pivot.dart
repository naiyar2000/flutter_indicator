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
        // ClassicDropDown(),
        Center(
            child: Container(
          decoration: BoxDecoration(
              color: Color(0xFF121212), borderRadius: BorderRadius.circular(5)),
          margin: EdgeInsets.only(top: 20),
          width: 130,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
          child: DropdownButton(
            style: TextStyle(color: Colors.white, fontSize: 18),
            underline: SizedBox(),
            hint: Text("Exponential", style: TextStyle(color: Colors.white)),
            dropdownColor: Colors.grey,
            value: valueChoose,
            onChanged: (newValue) {
              setState(() {
                valueChoose = newValue.toString();
              });
            },
            items: listitem
                .map((e) => DropdownMenuItem(child: Text(e), value: e))
                .toList(),
          ),
        )),
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
