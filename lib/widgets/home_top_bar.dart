import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zil/constants/custom_color.dart';

class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset("assets/images/zil_logo.svg"),
        // SizedBox(width: (width! / 8)- 100,),
        Container(
          alignment: Alignment.bottomCenter,
          height: 40,
          child: Text(
            "Sell on ZIL",
            style: _textStyle,
          ),
        ),
        // SizedBox(width: (width! / 8)- 100,),
        // search bar
        searchWidget(),

        // SizedBox(width: (width! / 8)- 100,),

        //action card
        actionCard(),
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
      child: SizedBox(
        width: (width! / 2.5) - 100,
        height: 40,
        child: Card(
            margin: EdgeInsets.zero,
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    width: ((width! / 2.5) - 100) * .6,
                    child: TextFormField(
                      focusNode: focusNode,
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.zero,
                    height: 40,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: CustomColor.orangeColor,
                      border:
                          Border.all(color: CustomColor.orangeColor, width: 10),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(7),
                        bottomRight: Radius.circular(7),
                        bottomLeft: Radius.zero,
                      ),
                    ),
                    child: const Icon(
                      Icons.search,
                      color: CustomColor.colorWhite,
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }

  SizedBox actionCard() {
    return SizedBox(
      width: (width! / 2) - 100,
      height: 35,
      child: Card(
          color: Color(0xFFF6F6F6),
          margin: EdgeInsets.zero,
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
          child: Row(
            children: [
              Expanded(
                  child: actionItem(
                      icon: "assets/images/scooter.png",
                      text: "Fast Delivery")),
              Expanded(
                  child: actionItem(
                      icon: "assets/images/location.png", text: "Pune")),
              Expanded(
                  child: actionItem(
                      icon: "assets/images/person.png", text: "Account")),
              Expanded(
                  child: actionItem(
                      icon: "assets/images/shopping_bag.png", text: "Bag")),
            ],
          )),
    );
  }

  Container actionItem({required String icon, required String text}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          FittedBox(
              child: Image.asset(
            icon,
            width: 20,
            height: 20,
          )),
          const SizedBox(
            width: 8,
          ),
          Visibility(
            visible: text == "Bag",
            child: Badge(
              position: BadgePosition.topEnd(
                top: -13,
                end: -15,
              ),
              badgeContent: const Text(
                "5",
                style: TextStyle(color: CustomColor.colorWhite, fontSize: 8),
              ),
              child: Text(
                text,
                style: const TextStyle(
                    color: CustomColor.blackColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
            ),
            replacement: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                text,
                style: const TextStyle(
                    color: CustomColor.blackColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
            ),
          )
        ],
      ),
    );
  }
}
