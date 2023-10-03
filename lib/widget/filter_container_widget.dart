import 'package:flutter/material.dart';

class FilterContainer extends StatelessWidget {
  FilterContainer({super.key, required this.url, required this.coffeeName});
  String url;

  String coffeeName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(url)),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 5, offset: Offset(0, 0), spreadRadius: 0)
                  ],
                  shape: BoxShape.circle,
                  color: Colors.black12),
            ),
            Text(
              coffeeName,
              style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
