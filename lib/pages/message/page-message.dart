import 'package:flutter/material.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';

class PageMessage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PageMessageState();
  }
}

class _PageMessageState extends State<PageMessage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(spacing: 8, children: [
          TDTag('默认', isLight: true),
          TDTag(
            '主要',
            isLight: true,
            theme: TDTagTheme.primary,
          ),
          TDTag(
            '警告',
            isLight: true,
            theme: TDTagTheme.warning,
          ),
          TDTag(
            '危险',
            isLight: true,
            theme: TDTagTheme.danger,
          ),
          TDTag(
            '成功',
            isLight: true,
            theme: TDTagTheme.success,
          ),
        ]),
        Wrap(
          spacing: 8,
          children: const [
            TDTag('默认'),
            TDTag(
              '主要',
              theme: TDTagTheme.primary,
            ),
            TDTag(
              '警告',
              theme: TDTagTheme.warning,
            ),
            TDTag(
              '危险',
              theme: TDTagTheme.danger,
            ),
            TDTag(
              '成功',
              theme: TDTagTheme.success,
            ),
          ],
        ),
        Wrap(
          spacing: 8,
          children: const [
            TDTag('默认', isOutline: true),
            TDTag(
              '主要',
              isOutline: true,
              theme: TDTagTheme.primary,
            ),
            TDTag(
              '警告',
              isOutline: true,
              theme: TDTagTheme.warning,
            ),
            TDTag(
              '危险',
              isOutline: true,
              theme: TDTagTheme.danger,
            ),
            TDTag(
              '成功',
              isOutline: true,
              theme: TDTagTheme.success,
            ),
          ],
        ),
        Wrap(
          spacing: 8,
          children: const [
            TDTag('默认', isOutline: true, isLight: true),
            TDTag(
              '主要',
              isOutline: true,
              isLight: true,
              theme: TDTagTheme.primary,
            ),
            TDTag(
              '警告',
              isOutline: true,
              isLight: true,
              theme: TDTagTheme.warning,
            ),
            TDTag(
              '危险',
              isOutline: true,
              isLight: true,
              theme: TDTagTheme.danger,
            ),
            TDTag(
              '成功',
              isOutline: true,
              isLight: true,
              theme: TDTagTheme.success,
            ),
          ],
        )
      ]
    );
  }
}
