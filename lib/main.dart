import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      home: new PageOne(),
      title: "Navigation",
      routes: <String, WidgetBuilder>{
        '/PageTwo': (BuildContext context) => new PageTwo(),
      }));
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("PAGE ONE"),
        ),
        body: new Container(
          child: new Column(
            children: <Widget>[
              new RaisedButton(
                child: new Text("TO PAGE TWO"),
                onPressed: () {
                  Navigator.pushNamed(context, '/PageTwo');
                },
              ),
              new Padding(padding: new EdgeInsets.only(top:20.0),
                child: 
                new RaisedButton(
                  child: new Text("TO PAGE TWO VARIANT"),
                  onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (_) => new PageTwo()));

                  },
                ),
              )

            ],


          ),
        )); // scaffold
  }
}

//page two
class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("PAGE TWO"),
        ),
        body: new Container(
          child: new Center(
              child: new Column(
                  mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[

              new Center(

                child: new Text("You are on the page two"),
              ),
              new Padding(padding: new EdgeInsets.only(top: 10.0),
               child:  new RaisedButton(
                  child: new Text("BACK TO PAGE ONE !!"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )

            ],
          )),
        )); // scaffold
  }
}
