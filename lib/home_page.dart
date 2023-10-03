import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:starbuckssapp/widget/filter_container_widget.dart';
import 'package:starbuckssapp/widget/gridview_builder_widget.dart';
import 'package:starbuckssapp/widget/search_bar_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    var d = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              _appBarWidget(),
              _myListTile(),
              const SearchBarWidget(),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FilterContainer(
                      url: "assets/images/ek_res1.png",
                      coffeeName: d!.kahveAdi,
                    ),
                    FilterContainer(
                      url: "assets/images/ek_res2.png",
                      coffeeName: d.kahveAdi2,
                    ),
                    FilterContainer(
                      url: "assets/images/ek_res3.png",
                      coffeeName: d.kahveAdi3,
                    ),
                    FilterContainer(
                      url: 'assets/images/ek_res4.png',
                      coffeeName: d.kahveAdi4,
                    ),
                  ],
                ),
              ),
              // Container(
              //   child: Image.asset("assets/images/food_filter.png"),
              // ),
              _sizedBox(20),
              Row(
                children: [
                  Text(
                    d.baslikYazi2,
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.filter_alt_outlined)),
                ],
              ),
              GridviewBuilderWidget(),
            ],
          ),
        ),
      ),
    );
  }

  ListTile _myListTile() {
    var d = AppLocalizations.of(context);
    return ListTile(
      title: Text(
        d!.baslikYazi,
        style: const TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        d.yazi2,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 18,
        ),
      ),
    );
  }

  Widget _appBarWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
              child: Image.asset(
            "assets/images/starbucks_logo.png",
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          )),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _circleAvatarActions(Icons.edit_notifications),
              _sizedBox(0),
              _circleAvatarActions(FontAwesomeIcons.calendar),
              _sizedBox(0),
              _circleAvatarActions(FontAwesomeIcons.figma),
            ],
          ),
        ],
      ),
    );
  }

  SizedBox _sizedBox(double height) => SizedBox(
        width: 10,
        height: height,
      );

  CircleAvatar _circleAvatarActions(IconData icon) {
    return CircleAvatar(
      backgroundColor: Colors.black54,
      child: SizedBox(
        width: 50,
        height: 50,
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
