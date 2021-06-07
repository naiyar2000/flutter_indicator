import 'package:flutter/material.dart';

class ClassicList extends StatefulWidget {
  const ClassicList({Key? key}) : super(key: key);

  @override
  _ClassicListState createState() => _ClassicListState();
}

class _ClassicListState extends State<ClassicList> {
  List<String> period = ['S3', 'S2', 'S1', 'Pivot Points', 'R1', 'R2', 'R3'];
  List<String> value = [
    '465.28',
    '465.28',
    '465.28',
    '465.28',
    '465.28',
    '465.28',
    '465.28'
  ];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      margin: EdgeInsets.only(top: 20),
      width: width * 0.9,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: ListView.builder(
        itemCount: value.length,
        itemBuilder: (_, i) => Container(
          margin: EdgeInsets.only(bottom: 22),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
              child: Container(
                child: Text(period[i],
                    style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ),
            Expanded(
              child: Container(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(value[i],
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
