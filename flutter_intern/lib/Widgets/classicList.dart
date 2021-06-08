import 'package:flutter/material.dart';

class ClassicList extends StatefulWidget {
  final mapList;
  ClassicList(this.mapList);

  @override
  _ClassicListState createState() => _ClassicListState();
}

class _ClassicListState extends State<ClassicList> {
 
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      margin: EdgeInsets.only(top: 20),
      width: width * 0.9,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: widget.mapList.length,
          itemBuilder: (_, i) {
            String key = widget.mapList.keys.elementAt(i) ?? "";
            return Container(
              margin: EdgeInsets.only(bottom: 22),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        child: Text(key,
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(widget.mapList[key],
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ),
                      ),
                    ),
                  ]),
            );
          }),
    );
  }
}
