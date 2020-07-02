import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
class FooterExample extends StatefulWidget{
  @override
  FooterExampleState createState() {
    return new FooterExampleState();
  }
}

class FooterExampleState extends State<FooterExample>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Footer View'),
      ),

      body: FooterView(
          children: <Widget>[
            new Center(
              child: new Text('Footer View Example'),
            )
          ],
          footer: new Footer(
              child: new Column(
                children: <Widget>[
                  new Text('All Rights Reserved'),
                  new Text('Powered by Nexsport')
                ],
              )
          )
      ),
    );
  }

}