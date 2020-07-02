# footer

A new Flutter package which helps developers in creating Customisable Footer for both Android and IOS Apps.

### Show some :heart: and star the repo to support the project

##Screenshots
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
# Pull Requests
I Welcome and i encourage all Pull Requests


This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
