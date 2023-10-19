import 'package:chat_craft/presentation/style/assets.dart';
import 'package:chat_craft/presentation/style/text_style.dart';
import 'package:chat_craft/presentation/style/widget.dart';
import 'package:chat_craft/presentation/widget/app_state_less.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage<SplashController> extends AppStateLess {
  const SplashPage({super.key});

  @override
  Widget body(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(62, 135, 52, 0),
          child: SvgPicture.asset(Assets.imagesUserTalk),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(47, 42, 48, 0),
          child: Text(
            'Connect easily with your family and friends over countries',
            style: heading2,
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 126, bottom: 18),
            child: Text(
              'Terms & Privacy Policy',
              style: bodyText1,
            )),
        Row(
          children: [
            Expanded(
                child: primaryButton('Start Messaging', () {},
                    fixedSize: Size(342, 52)))
          ],
        )
      ],
    );
  }
}
