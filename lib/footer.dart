library footer;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  //final int flex;
  final Color? backgroundColor;
  final Alignment? alignment;
  //final double padding;
  final EdgeInsetsGeometry? padding;
  final Widget child;
  Footer(
      {this.backgroundColor,
      this.alignment,
      this.padding,
      required this.child});
  @override
  State createState() => FooterState();
}

class FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: widget.backgroundColor == null
          ? Colors.grey.shade200
          : widget.backgroundColor,
      child: new Align(
        alignment: widget.alignment == null
            ? Alignment.bottomCenter
            : widget.alignment!,
        child: new Padding(
          //padding: EdgeInsets.all(widget.padding == null ?5.0:widget.padding),
          padding:
              widget.padding == null ? EdgeInsets.all(5.0) : widget.padding!,
          child: widget.child,
        ),
      ),
    );
  }
}
