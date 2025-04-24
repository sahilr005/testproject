import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testproject/core/const/app_const_assets.dart';
import '../blocs/chat_bloc.dart';
import '../blocs/chat_event.dart';

class CustomInputField extends StatelessWidget {
  final TextEditingController? controller;
  const CustomInputField({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Color(0xFFFEF3DC),
        border: Border.all(color: Color(0xFF2A9D8F)),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xff000026).withOpacity(0.15),
            blurRadius: 6,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF0C201D),
                fontWeight: FontWeight.w400,
              ),
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                isCollapsed: true,
                border: InputBorder.none,
                hintText: "Type your message...",
                hintStyle: TextStyle(color: Colors.grey[600]),
              ),
              cursorColor: Colors.black,
            ),
          ),
          SizedBox(width: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(AppAssets.boxIcon),
              SizedBox(width: 10),
              Column(
                children: [
                  SvgPicture.asset(AppAssets.cameraIcon),
                  SizedBox(height: 4),
                  SvgPicture.asset(AppAssets.flagIcon),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
