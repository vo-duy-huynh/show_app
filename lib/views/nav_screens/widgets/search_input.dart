import 'package:flutter/material.dart';

class SearchInputWidget extends StatelessWidget {
  const SearchInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Tìm kiếm sản phẩm',
              hintStyle: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none),
              filled: true,
              fillColor: Color(0xffEFEFEF)),
        ),
      ),
    );
  }
}
