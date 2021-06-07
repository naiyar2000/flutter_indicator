import 'package:flutter/material.dart';
import 'package:flutter_intern/Widgets/MovingAveragesList.dart';
import 'package:flutter_intern/Widgets/TechnicalIndictor.dart';
import 'package:flutter_intern/Widgets/classicDropdown.dart';
import 'package:flutter_intern/Widgets/classicList.dart';
import 'package:flutter_intern/Widgets/exponentialDropdown.dart';
import 'package:flutter_intern/Widgets/levelIndicator.dart';
import 'package:flutter_intern/Widgets/minButtons.dart';
import 'package:flutter_intern/Widgets/oscillatorsList.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
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
              Text('Summary',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              SizedBox(height: 20),
              Container(
                  padding: EdgeInsets.only(left: 50, right: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [LevelIndicator(), MinButtons()])),
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
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(children: [
                        Text("7",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        Text("Buy",
                            style:
                                TextStyle(color: Colors.white60, fontSize: 16))
                      ]),
                      Column(children: [
                        Text("-",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        Text("Neutral",
                            style:
                                TextStyle(color: Colors.white60, fontSize: 16))
                      ]),
                      Column(children: [
                        Text("5",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        Text("Sell",
                            style:
                                TextStyle(color: Colors.white60, fontSize: 16))
                      ]),
                    ]),
              ),
              ExponentialDropDown(),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFF121212),
                    borderRadius: BorderRadius.circular(5)),
                margin: EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Period',
                          style:
                              TextStyle(color: Colors.white60, fontSize: 16)),
                      Text('Value',
                          style:
                              TextStyle(color: Colors.white60, fontSize: 16)),
                      Text('Type',
                          style:
                              TextStyle(color: Colors.white60, fontSize: 16)),
                    ]),
              ),
              MovingAveragesList(),
              Text('Oscillators',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: TextButton(
                      onPressed: () {},
                      child: Text("STRONG SELL",
                          style: TextStyle(color: Colors.white)),
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xFFFF2E50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))))),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(children: [
                        Text("1",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        Text("Buy",
                            style:
                                TextStyle(color: Colors.white60, fontSize: 16))
                      ]),
                      Column(children: [
                        Text("1",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        Text("Neutral",
                            style:
                                TextStyle(color: Colors.white60, fontSize: 16))
                      ]),
                      Column(children: [
                        Text("9",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        Text("Sell",
                            style:
                                TextStyle(color: Colors.white60, fontSize: 16))
                      ]),
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFF121212),
                    borderRadius: BorderRadius.circular(5)),
                margin: EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Name',
                          style:
                              TextStyle(color: Colors.white60, fontSize: 16)),
                      Text('Value',
                          style:
                              TextStyle(color: Colors.white60, fontSize: 16)),
                      Text('Action',
                          style:
                              TextStyle(color: Colors.white60, fontSize: 16)),
                    ]),
              ),
              OscillatorsList(),
              Text('Pivot Points',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              ClassicDropDown(),
              ClassicList()
            ]),
          ),
        ),
      ),
    );
  }
}
