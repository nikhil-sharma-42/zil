import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zil/app/size_config.dart';
import 'package:zil/constants/custom_color.dart';

class LandingTopBar extends StatefulWidget {
  const LandingTopBar({Key? key}) : super(key: key);

  @override
  _LandingTopBarState createState() => _LandingTopBarState();
}

class _LandingTopBarState extends State<LandingTopBar> {
  final TextStyle _textStyle = const TextStyle(
    fontSize: 14,
    color: CustomColor.lightGrey,
    fontWeight: FontWeight.w400,
  );
  double? height;
  double? width;
  FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        actionCard(), SvgPicture.asset("assets/images/zil_logo.svg"),

        // search bar
        searchWidget(),
      ],
    );
  }

  InkWell searchWidget() {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      focusColor: Colors.transparent,
      onTap: () {
        focusNode.requestFocus();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: (width! / 2.5) - 450,
            height: 40,
            child: Card(
                margin: EdgeInsets.zero,
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    width: ((width! / 2.5) - 100) * .6,
                    child: TextFormField(
                      focusNode: focusNode,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                )),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 150,
          ),
          SizedBox(
            width: (width! / 2.5) - 150,
            height: 40,
            child: Card(
                margin: EdgeInsets.zero,
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    width: ((width! / 2.5) - 100) * .6,
                    child: TextFormField(
                      focusNode: focusNode,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }

  SizedBox actionCard() {
    return SizedBox(
      width: (width! / 2),
      height: 35,
      child: Card(
          margin: EdgeInsets.zero,
          elevation: 15,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              actionItem(text: "Fast Delivery"),
              actionItem(text: "Flower Bouquets"),
              actionItem(text: "Cakes"),
              actionItem(text: "Gift Bundles"),
              actionItem(text: "Personalized"),
              actionItem(text: "Sell on ZIL"),
            ],
          )),
    );
  }

  Container actionItem({required String text}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        text,
        maxLines: 1,
        style: const TextStyle(
            color: CustomColor.blackColor,
            fontWeight: FontWeight.w500,
            fontSize: 12),
      ),
    );
  }
}
