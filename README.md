# Flutter Footer

A new Flutter package which helps developers in creating Customisable Footer for both Android and IOS Apps.

### Show some :heart: and :star: the repo to support the project

### Screenshots
<img src="footer1.jpg" height="300em" /> <img src="footer2.jpg" height="300em" />
## Getting Started
## Usag5
[Example](https://github.com/nyakaz73/Flutter-Footer/blob/master/example/footer_example.dart)

To use this package :

* add the dependancy to your [pubspec.yaml](https://github.com/nyakaz73/Flutter-Footer/blob/master/pubspec.yanl) file.
```yaml
    dependencies:
        flutter:
        sdk:flutter
        footer:
```

### How to Use

The flutter footer uses a component called [FooterView](https://github.com/nyakaz73/Flutter-Footer/blob/master/example/footer_example.dart). The [FooterView](https://github.com/nyakaz73/Flutter-Footer/blob/master/example/footer_example.dart) Component take the three arguments as follows:

* 1. children : which is a Scrollable List of Widgets
* 2. footer : Takes a Footer Component which takes the Customizable Widget e.g  a Container Widget
* 3. flex : This takes an interger from 1-10 which flex the footer space of the screen with 2 being the default

* NB: The above aguments only two are mandatory which is children and footer. See [Example](https://github.com/nyakaz73/Flutter-Footer/blob/master/example/footer_example.dart)


```dart
FooterView(
  children: <Widget>[
    ...                     //this is a Scrollable List of Widgets
  ],
  footer : Footer(           //this take the Footer Component which has 4 arguments with one being mandatory ie the child
    child:  Container(),         //This take a Cusstomisable Widget eg Container, Column e.t.c
    ...                        //See Description Below for the other arguments of the Footer Component
  ),
  flex: 2      //this take an interger that ranges from 1-10 with 2 being the default for the Footer Area
)
```

The [Footer](https://github.com/nyakaz73/Flutter-Footer/blob/master/example/footer_example.dart) Component take four arguments with one being Mandatory ie child Widget . The arguments are as follow

```dart
Footer(
  child: Container(),  //The child Widget is mandatory takes any Customisable Widget for the footer
  backgroundColor : Colors.grey.shade200  // defines the background Colors of the Footer with default Colors.grey.shade200
  padding: 5.0 // Take a double with default being 5.0
  alignment: Alignment.bottomCenter //this is of type Aligment with default being Alignment.bottomCenter
)
```

## Below is a Full Example

```dart
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
              child: new Padding(
              padding: EdgeInsets.all(5.0),
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

```
### Pull Requests
I Welcome and i encourage all Pull Requests

## Created and Maintained by
* Author: [Tafadzwa Lameck Nyamukapa](https://github.com/nyakaz73) :
* Email:  [tafadzwalnyamukapa@gmail.com]
* Open for any colleboration and Remote Work!!
* Happy Fluttering

### License
```
MIT License

Copyright (c) 2020 Tafadzwa Lameck Nyamukapa

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


```

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
