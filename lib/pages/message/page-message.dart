import 'package:flutter/cupertino.dart';

class PageMessage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PageMessageState();
  }
}

class _PageMessageState extends State<PageMessage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('message'),
    );
  }
}
