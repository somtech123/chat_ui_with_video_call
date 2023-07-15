import 'package:chat_ui/string_const.dart';
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class VideoCall extends StatelessWidget {
  const VideoCall({super.key, required this.callID});
  final String callID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
        appID: StringConstant.yourAppID,
        appSign: StringConstant.yourAppSign,
        userID: 'user_id',
        userName: 'user_name',
        callID: callID,
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
          //    ..onOnlySelfInRoom = (contex) => Navigator.of(context).pop(),
          ..layout = ZegoLayout.pictureInPicture(
            isSmallViewDraggable: true,
            switchLargeOrSmallViewByClick: true,
          ));
  }
}
