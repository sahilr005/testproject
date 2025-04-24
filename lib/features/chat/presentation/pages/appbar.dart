import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testproject/core/const/app_const_assets.dart';

class AppAppBar extends StatelessWidget {
  const AppAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(AppAssets.backIcon)),
        const SizedBox(width: 4),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFFFCC85F),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              border: Border.all(color: const Color(0xFFA6E9DB), width: 1),
            ),
            margin: EdgeInsets.only(right: 20),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: const Color(0xFF7BD8C0),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundImage: NetworkImage(
                      'https://cdn.hswstatic.com/gif/play/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg',
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  "Tommy’s Group",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0C201D),
                  ),
                ),
                const SizedBox(width: 12),
                SvgPicture.asset(AppAssets.menuIcon)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
