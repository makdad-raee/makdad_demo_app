import 'package:flutter/material.dart';

class AvatarWithName extends StatelessWidget {
  const AvatarWithName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
            'https://img.freepik.com/free-photo/smiley-woman-talking-phone-medium-shot_23-2149476757.jpg?w=740&t=st=1706187389~exp=1706187989~hmac=a86e5bdca244b4ffa8e237a22ed353be12aee7248b551bcaa41606ac0d7566e2',
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Text('Owner Name'),
      ],
    );
  }
}