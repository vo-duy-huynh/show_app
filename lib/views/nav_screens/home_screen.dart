import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/views/nav_screens/widgets/banner_widget.dart';
import 'package:shop_app/views/nav_screens/widgets/category_text.dart';
import 'package:shop_app/views/nav_screens/widgets/search_input.dart';
import 'package:shop_app/views/nav_screens/widgets/welcome_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WelcomeText(),
        SizedBox(
          height: 10,
        ),
        SearchInputWidget(),
        BannerWidget(),
        CategoryText(),
      ],
    );
  }
}
