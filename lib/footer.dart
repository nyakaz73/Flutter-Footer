library footer;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Footer extends StatefulWidget{
  //final int flex;
  final Color backgroundColor;
  Alignment alignment;
  final double padding;
  final Widget child;
  Footer({this.backgroundColor,this.alignment,this.padding, @required this.child}){
    if(this.alignment == null){
      this.alignment = Alignment.bottomCenter;
    }
  }
  @override
  State createState()=> FooterState();
}

class FooterState extends State<Footer>{
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: widget.backgroundColor,
      child: new Align(
        alignment: widget.alignment,
        child: new Padding(
            padding: EdgeInsets.all(widget.padding),
          child: widget.child,
        ),
      ),
    );
  }

}
