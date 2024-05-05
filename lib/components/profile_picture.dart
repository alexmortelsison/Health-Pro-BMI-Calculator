import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final AssetImage profilePic;
  const ProfilePicture({
    super.key,
    required this.profilePic,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 24,
      backgroundImage: profilePic,
    );
  }
}
