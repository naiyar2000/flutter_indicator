import 'package:flutter/material.dart';

class OscillatorsList extends StatefulWidget {
  final list;
  OscillatorsList(this.list);

  @override
  _OscillatorsListState createState() => _OscillatorsListState();
}

class _OscillatorsListState extends State<OscillatorsList> {
  @override
  Widget build(BuildContext context) {
    return widget.list.length != 0
        ? Container(
            height: MediaQuery.of(context).size.height * 0.65,
            margin: EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width * 0.9,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: widget.list.length,
              itemBuilder: (_, i) => Container(
                margin: EdgeInsets.only(bottom: 22),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          child: Text(widget.list[i]["name"] ?? "",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Center(
                            child: Text(widget.list[i]["value"] ?? "",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(widget.list[i]["action"] ?? "",
                                style: TextStyle(
                                    color: widget.list[i]["action"] == "Buy"
                                        ? Colors.blue
                                        : widget.list[i]["action"] == "Neutral"
                                            ? Colors.orange
                                            : widget.list[i]["action"] == "Sell"
                                                ? Colors.white60
                                                : Colors.red,
                                    fontSize: 16)),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          )
        : Container(child: null);
  }
}
