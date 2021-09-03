import 'package:flutter/cupertino.dart';
import 'package:footer/footer.dart';

class FooterView extends StatefulWidget {
  final List<Widget> children;
  final Footer footer;
  final int? flex;
  FooterView({required this.children, required this.footer, this.flex}) {
    if (flex != null) {
      if (this.flex! > 10 || this.flex! < 1) {
        throw ArgumentError('Only 1-10 Flex range is allowed');
      }
    }
  }
  @override
  FooterViewState createState() {
    return new FooterViewState();
  }
}

class FooterViewState extends State<FooterView> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      SliverPadding(
        padding: const EdgeInsets.all(0.0),
        sliver: new SliverList(
          delegate: new SliverChildListDelegate(
            widget
                .children, //All children inside Goes here including Columns , Containers, Expanded, ListViews
          ),
        ),
      ),
      SliverFillRemaining(
        hasScrollBody: false,
        child: new Column(
          children: <Widget>[
            new Expanded(
              flex: widget.flex == null ? 8 : 10 - widget.flex!,
              child: new Container(),
            ),
            new Expanded(
                flex: widget.flex == null ? 2 : widget.flex!,
                child: widget.footer)
          ],
        ),
      ),
    ]);
  }
}
