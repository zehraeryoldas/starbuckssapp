import 'package:flutter/material.dart';

class GridviewBuilderWidget extends StatelessWidget {
  GridviewBuilderWidget({super.key});

  var imageList = [
    "assets/images/ek_res1.png",
    "assets/images/ek_res2.png",
    "assets/images/ek_res3.png",
    "assets/images/ek_res4.png",
    "assets/images/ek_res3.png",
    "assets/images/ek_res4.png",
    "assets/images/ek_res1.png",
    "assets/images/ek_res2.png",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: imageList.length,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imageList[index]), fit: BoxFit.cover),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8,
                      offset: Offset(3, 3),
                      spreadRadius: 2)
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)),
          ),
        );
      },
    );
  }
}
