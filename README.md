# Flutter Footer

A new Flutter package which helps developers in creating Customisable Footer for both Android and IOS Apps.

### Show some :heart: and :star: the repo to support the project

### Screenshots
<img src="footer1.png" height="300em" /> <img src="footer2.png" height="300em" />
## Getting Started
## Usage
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
```dart
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
      //FooterView Which is a Scrollable Widget that take the children and the Footer
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
```
### Pull Requests
I Welcome and i encourage all Pull Requests

### Created and Maintained by
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
