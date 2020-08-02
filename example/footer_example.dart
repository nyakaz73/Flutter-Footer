import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  static Map<int, Color> color = {
    50:Color.fromRGBO(4, 131, 184, .1),
    100:Color.fromRGBO(4, 131, 184, .2),
    200:Color.fromRGBO(4, 131, 184, .3),
    300:Color.fromRGBO(4, 131, 184, .4),
    400:Color.fromRGBO(4, 131, 184, .5),
    500:Color.fromRGBO(4, 131, 184, .6),
    600:Color.fromRGBO(4, 131, 184, .7),
    700:Color.fromRGBO(4, 131, 184, .8),
    800:Color.fromRGBO(4, 131, 184, .9),
    900:Color.fromRGBO(4, 131, 184, 1),
  };
  //MaterialColor myColor = MaterialColor(0xFF162A49, color);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Footer',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF162A49, color),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FooterPage(),
    );
  }
}

class FooterPage extends StatefulWidget {
  @override
  FooterPageState createState() {
    return new FooterPageState();
  }
}

class FooterPageState extends State<FooterPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new  Text('Flutter Footer View',style: TextStyle(fontWeight:FontWeight.w200),)
      ),
      drawer: new Drawer(),
      body: FooterView(
          children: <Widget>[
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Padding(
                  padding: EdgeInsets.only(top:50,left: 70),
                    child: new Text('Scrollable View Section'),
                )
              ],
            ),
          ],
          footer: new Footer(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:<Widget>[
                  new Center(
                    child:new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Container(
                          height: 45.0,
                          width: 45.0,
                          child: Center(
                            child:Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0), // half of height and width of Image
                              ),
                              child: IconButton(
                                icon: new Icon(Icons.audiotrack,size: 20.0,),
                                color: Color(0xFF162A49),
                                onPressed: () {},
                              ),
                            ),
                          )
                        ),
                        new Container(
                          height: 45.0,
                          width: 45.0,
                          child: Center(
                            child:Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0), // half of height and width of Image
                              ),
                              child: IconButton(
                                icon: new Icon(Icons.fingerprint,size: 20.0,),
                                color: Color(0xFF162A49),
                                onPressed: () {},
                              ),
                            ),
                          )
                        ),
                        new Container(
                          height: 45.0,
                          width: 45.0,
                          child: Center(
                            child:Card(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0), // half of height and width of Image
                              ),
                              child: IconButton(
                                icon: new Icon(Icons.call,size: 20.0,),
                                color: Color(0xFF162A49),
                                onPressed: () {},
                              ),
                            ),
                          )
                        ),
                      ],
                    ),
                  ),

                  Text('Copyright ©2020, All Rights Reserved.',style: TextStyle(fontWeight:FontWeight.w300, fontSize: 12.0, color: Color(0xFF162A49)),),
                  Text('Powered by Nexsport',style: TextStyle(fontWeight:FontWeight.w300, fontSize: 12.0,color: Color(0xFF162A49)),),
                ]
              ),
            
          )
      ),
      floatingActionButton: new FloatingActionButton(
              elevation: 10.0,
              child: new Icon(Icons.chat),
              backgroundColor: Color(0xFF162A49),
              onPressed: (){
              }
      ),
    );
  }
}
