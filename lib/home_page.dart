import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{
  var num1=0, num2=0, sum=0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }
  void doSubtraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }
void doMultiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }
  void doDivision() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }
  void doClear() {
    setState(() {
      t1.text = "";
      t2.text = "";
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                 filled: true,
                      fillColor: Colors.grey,
                hintText: "Enter First Number"
              ),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                 filled: true,
                      fillColor: Colors.grey,
                hintText: "Enter Second Number"
              ),
              controller: t2,
            ),
            new Padding(
              padding:  const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
            new MaterialButton(
              child: new Text("+"),
              color: Colors.amberAccent,
              onPressed: doAddition,
            ),
            new MaterialButton(
              child: new Text("-"),
              color: Colors.amberAccent,
              onPressed: doSubtraction,
            ),
              ],
            ),
             new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
            new MaterialButton(
              child: new Text("*"),
              color: Colors.amberAccent,
              onPressed: doMultiplication,
            ),
            new MaterialButton(
              child: new Text("/"),
              color: Colors.amberAccent,
              onPressed: doDivision,
            ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
              child: new Text("Clear"),
              color: Colors.white,
              onPressed: doClear,
            ),
              ],
            ),
            new Text(
              "Output : $sum",
              style: new TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ],
        ),
        ),
      );
  }
}