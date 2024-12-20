import 'package:flutter/material.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';

class PageMyCenter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PageMyCenterState();
  }
}

class _PageMyCenterState extends State<PageMyCenter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(children: <Widget>[
        TDAvatar(
          size: TDAvatarSize.medium,
          type: TDAvatarType.normal,
          defaultUrl: 'assets/img/td_avatar_1.png',),
        Text('我的头像'),
        SizedBox(width: 32,),
        Wrap(
          children: [
            TDInput(
              leftLabel: '请输入',
              // controller: controller[0],
              backgroundColor: Colors.white,
              hintText: '请输入文字',
              onChanged: (text) {
                setState(() {});
              },
              onClearTap: () {
                // controller[0].clear();
                setState(() {});
              },
            ),
            const SizedBox(
              height: 16,
            )
          ],
        ),
        TDCellGroup(
          cells: [
            TDCell(arrow: false, title: '收藏', note: '查看收藏单据'),
            TDCell(arrow: false, title: '日期', required: true),
            TDCell(
                arrow: true,
                title: '消息',
                noteWidget: TDBadge(TDBadgeType.message, count: '8')),
            TDCell(
                arrow: false,
                title: '单行标题',
                rightIconWidget: TDSwitch(isOn: true)),
            TDCell(arrow: true, title: '单行标题', note: '辅助信息'),
            TDCell(arrow: true, title: '单行标题', leftIcon: TDIcons.lock_on),
            TDCell(arrow: false, title: '单行标题'),
          ],
        )
      ]),
    );
  }
}
