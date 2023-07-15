import 'package:chat_ui/custom_tile.dart';
import 'package:flutter/material.dart';

class ModalTile extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final IconData? icon;

  const ModalTile({
    this.title,
    this.subtitle,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: CustomTile(
        mini: false,
        leading: Container(
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xff1e2225),
          ),
          padding: const EdgeInsets.all(10),
          child: Icon(
            icon,
            color: Colors.grey,
            size: 38,
          ),
        ),
        subtitle: Text(
          subtitle!,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.grey, fontSize: 14),
        ),
        title: Text(
          title!,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
