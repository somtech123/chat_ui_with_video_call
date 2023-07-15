import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_dialog.dart';
import 'video_call.dart';

class ChatAppBr extends StatelessWidget implements PreferredSizeWidget {
  const ChatAppBr({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Transform.scale(
        scale: 2.w,
        child: Padding(
          padding: const EdgeInsets.only(left: 17),
          child: Row(
            children: [
              InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back,
                  size: 10.h,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 10.w),
              Container(
                height: 15.h,
                width: 18.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1,
                        offset: Offset.zero,
                        spreadRadius: 2),
                  ],
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/profile.jpg'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: const Icon(
            Icons.phone,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const VideoCall(
                      callID: "1",
                    ))),
            child: const Icon(
              Icons.video_call,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: const Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(right: 20),
        //   child: SvgPicture.asset('assets/svgs/notification-icon.svg',
        //       height: 25.h),
        // ),
      ],
      centerTitle: true,
      title: Column(
        children: [
          Text(
            'chisom - Onyenacho',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: Colors.black,
                ),
          ),
          Text(
            '@somtech',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Colors.grey,
                ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
