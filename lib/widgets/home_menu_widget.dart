import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 4 - 6,
      height: 80,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 5.0),
          Image.asset(image, height: 45, width: 45,),
          SizedBox(height: 5.0),
          Text(title,
              style: const TextStyle(color: Colors.black, fontSize: 12),
              overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}