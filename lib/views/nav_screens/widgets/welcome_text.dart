import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + 10, left: 25, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Xin chào, Bạn đang muốn\n tìm kiếm gì?',
            style: TextStyle(
              fontSize: 22,
              fontFamily: 'OpenSans-Bold',
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            child: SvgPicture.asset(
              'assets/icons/cart.svg',
              width: 20,
            ),
          )
        ],
      ),
    );
  }
}
