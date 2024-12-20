import 'package:flutter/material.dart';

class PageLayoutFlex extends StatefulWidget {
  const PageLayoutFlex({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _PageLayoutFlexState();
  }
}

class _PageLayoutFlexState extends State<PageLayoutFlex> {
  @override
  Widget build(BuildContext context) {
    return Column(
      //Flex的两个子widget按1：2来占据水平空间  
      children: <Widget>[
        Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                height: 30.0,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 30.0,
                color: Colors.green,
              ),
            ),
          ],
        ),
        Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: SizedBox(
              height: 100.0,
              //Flex的三个子widget，在垂直方向按2：1：1来占用100像素的空间
              child: Flex(
                direction: Axis.vertical,
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        height: 30.0,
                        color: Colors.red,
                      )),
                  Spacer(
                    flex: 1,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 30.0,
                      color: Colors.green,
                    ),
                  )
                ],
              ),
            )),
      ],
    );
  }
}
