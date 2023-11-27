import 'package:flutter/material.dart';

class CategoryText extends StatelessWidget {
  final List<String> _categoryLabels = [
    'Iphone',
    'Samsung',
    'Huawei',
    'Oppo',
    'Xiaomi',
    'Vivo',
    'Realme'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Categories',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 40,
            child: Row(children: [
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _categoryLabels.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ActionChip(
                        backgroundColor: Colors.red.shade500,
                        onPressed: () {},
                        label: Text(
                          _categoryLabels[index],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
