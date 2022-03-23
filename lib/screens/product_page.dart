import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zil/app/size_config.dart';
import 'package:zil/constants/custom_color.dart';
import 'package:zil/models/model.dart';

import '../../provider/app_provider.dart';
import '../widgets/home_top_bar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  var colorList = [
    Color(0xFFF31919),
    Color(0xFFFDD836),
    Color(0xFFC964F9),
    Color(0xFFFFFFFF),
    Color(0xFF72BBFF),
  ];
  final _sizeConfig = SizeConfig();
  late AppProvider _appProvider;

  @override
  Widget build(BuildContext context) {
    _sizeConfig.init(context);
    _appProvider = Provider.of<AppProvider>(context);
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(right: 40, left: 60, top: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TopBar(),
                  Padding(
                    padding: const EdgeInsets.only(left: 60.0),
                    child: menuItemsRow(context),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 90.0, right: 30),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: SizeConfig.screenWidth! * 0.06,
                              child: Column(
                                children: [
                                  smallImages(),
                                  smallImages(),
                                  smallImages(),
                                ],
                              ),
                            ),
                            SizedBox(width: SizeConfig.screenWidth! * 0.001),
                            Expanded(
                              flex: 3,
                              child: SizedBox(
                                width: SizeConfig.screenWidth! * 0.3,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  color: Colors.white.withOpacity(.5),
                                  child: SizedBox(
                                    height: SizeConfig.screenWidth! * 0.3,
                                    width: SizeConfig.screenWidth! * 0.29,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1602351447937-745cb720612f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: SizeConfig.screenWidth! * 0.02),
                            Expanded(
                              flex: 4,
                              child: SizedBox(
                                width: SizeConfig.screenWidth! * 0.55,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Chocolate Cake',
                                          style: TextStyle(
                                            color: Color(0xFF242860),
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            new Text('₹ ',
                                                style: new TextStyle(
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: new Color(0xFF4F527E),
                                                )),
                                            new Text(
                                              '1000',
                                              style: new TextStyle(
                                                  fontSize: 35.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: new Color(0xFF4F527E)),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          RatingBar.builder(
                                            initialRating: 3.5,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.symmetric(
                                                horizontal: 4.0),
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Color(0xFF242860),
                                            ),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                          ),
                                          SizedBox(
                                            height:
                                                SizeConfig.screenHeight! * 0.1,
                                          ),
                                          Text(
                                            '26 Reviews',
                                            style: TextStyle(
                                                color: Color(0xFF242860)),
                                          )
                                        ],
                                      ),
                                    ),
                                    Text(
                                      'Product Information',
                                      style: TextStyle(
                                          color: Color(0xFF979797),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w200),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 3,
                                          child: RichText(
                                            text: TextSpan(
                                                text:
                                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit ',
                                                style: TextStyle(
                                                  color: Color(0xFF242860),
                                                  fontSize: 18,
                                                ),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                    text:
                                                        'Phasellus vestibulum sodales posuere . Quisque finibus ',
                                                    style: TextStyle(
                                                      color: Color(0xFF242860),
                                                      fontFamily: 'Raleway',
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                      text:
                                                          'sit amet urna eget dignissim.',
                                                      style: TextStyle(
                                                        fontFamily: 'Raleway',
                                                        color:
                                                            Color(0xFF242860),
                                                        fontSize: 18,
                                                      ))
                                                ]),
                                          ),
                                        ),
                                        Expanded(child: SizedBox())
                                      ],
                                    ),
                                    SizedBox(
                                      height: SizeConfig.screenHeight! * 0.1,
                                    ),
                                    Text(
                                      'Color',
                                      style: TextStyle(
                                          color: Color(0xFF979797),
                                          fontSize: 17),
                                    ),
                                    SizedBox(
                                      height: SizeConfig.screenHeight! * 0.004,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        colorItem(colorList),
                                        button(
                                            butttonColor: Color(0xFF252058),
                                            textColor: Colors.white,
                                            text: 'Order now'),
                                      ],
                                    ),
                                    SizedBox(
                                      height: SizeConfig.screenHeight! * 0.02,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Quantity',
                                          style: TextStyle(
                                              color: Color(0xFF979797),
                                              fontSize: 17),
                                        ),
                                        CustomStepper(
                                            lowerLimit: 1,
                                            upperLimit: 10,
                                            stepValue: 1,
                                            iconSize: 20,
                                            value: 1),
                                        button(
                                            text: 'Add to bag',
                                            butttonColor: Color(0xFFFDD836),
                                            textColor: Color(0xFF252058)),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  SizedBox(
                    width: SizeConfig.screenWidth! * 0.9,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 90.0,
                      ),
                      child: Row(children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Customer Reviews',
                                style: TextStyle(
                                    fontSize: 40, color: Color(0xFF242860))),
                            SizedBox(
                              height: 40,
                            ),
                            IntrinsicHeight(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF242860),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jamie Does\'nt',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF242860),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      RatingBar.builder(
                                        unratedColor: Color(0xFFD8D8D8),
                                        initialRating: 3,
                                        itemSize: 20,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemPadding: EdgeInsets.symmetric(
                                            horizontal: 3.0),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: VerticalDivider(
                                      color: Color(0xFFE5E5E5),
                                      thickness: 1,
                                    ),
                                  ),
                                  Text(
                                    'The roses were super fresh and look really beautiful',
                                    style: TextStyle(color: Color(0xFF242860)),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            IntrinsicHeight(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF242860),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jamie Does\'nt',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF242860),
                                        ),
                                      ),
                                      RatingBar.builder(
                                        unratedColor: Color(0xFFD8D8D8),
                                        initialRating: 3,
                                        itemSize: 20,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemPadding: EdgeInsets.symmetric(
                                            horizontal: 3.0),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: VerticalDivider(
                                      color: Color(0xFFE5E5E5),
                                      thickness: 1,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          'The roses were super fresh and look really beautiful'),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: 100,
                                        height: 80,
                                        decoration: BoxDecoration(
                                            color: Color(0xFFE5E5E5),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8))),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                        Expanded(
                          child: Column(children: [
                            Material(
                              elevation: 3,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                decoration: BoxDecoration(
                                  color: Color(0xFFF3F3F3),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: Row(children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Color(0xFF242860),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jamie Does\'nt',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF242860),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      RatingBar.builder(
                                        unratedColor: Color(0xFFD8D8D8),
                                        initialRating: 3,
                                        itemSize: 20,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemPadding: EdgeInsets.symmetric(
                                            horizontal: 3.0),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'The roses were super fresh and look really beautiful',
                                        style:
                                            TextStyle(color: Color(0xFF242860)),
                                      )
                                    ],
                                  ),
                                ]),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Material(
                              elevation: 3,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                decoration: BoxDecoration(
                                  color: Color(0xFFF3F3F3),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: Row(children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Color(0xFF242860),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jamie Does\'nt',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF242860),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      RatingBar.builder(
                                        unratedColor: Color(0xFFD8D8D8),
                                        initialRating: 3,
                                        itemSize: 20,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemPadding: EdgeInsets.symmetric(
                                            horizontal: 3.0),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'The roses were super fresh and look really beautiful',
                                        style:
                                            TextStyle(color: Color(0xFF242860)),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        width: 100,
                                        height: 80,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0xFFFDD836)),
                                            color: Color(0xFFE5E5E5),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8))),
                                      ),
                                    ],
                                  ),
                                ]),
                              ),
                            ),
                          ]),
                        )
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 2000,
                  )
                ],
              ),
            )));
  }

  Widget smallImages() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        height: SizeConfig.screenWidth! * 0.05,
        width: SizeConfig.screenWidth! * 0.05,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            'https://images.unsplash.com/photo-1501973931234-5ac2964cd94a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  Widget menuItemsRow(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        width: width * .885,
        height: 40,
        child: Card(
          color: Color(0xFFEBEBEB),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              children: [
                textButton("Fast Delivery"),
                const SizedBox(
                  width: 10,
                ),
                divider(),
                textButton("Flower Bouquets"),
                const SizedBox(
                  width: 10,
                ),
                divider(),
                textButton("Cakes"),
                const SizedBox(
                  width: 10,
                ),
                divider(),
                textButton("Gift Bundles"),
                const SizedBox(
                  width: 10,
                ),
                divider(),
                textButton("Personalized"),
                const SizedBox(
                  width: 10,
                ),
                divider(),
                textButton("Create Your Own"),
                const SizedBox(
                  width: 10,
                ),
                divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextButton textButton(String text) {
    return TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 12,
            color: CustomColor.titleColor,
            fontWeight: FontWeight.w400,
          ),
        ));
  }

  Container divider() {
    return Container(
      width: 1,
      height: 25,
      color: CustomColor.lightGrey2,
    );
  }

  Container filterContainer(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(left: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),

          //categories
          SizedBox(
            height: 250,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _appProvider.changeCategory().data!.length,
              itemBuilder: (context, index) {
                final category = _appProvider.changeCategory().data![index];
                return categoryItem(category, index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget categoryItem(Category item, int? index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                border: Border.all(color: CustomColor.lightGrey),
                borderRadius: BorderRadius.circular(2)),
            child: Transform.scale(
              scale: 1.3,
              child: Checkbox(
                  side: BorderSide.none,
                  focusColor: Colors.transparent,
                  activeColor: Colors.transparent,
                  checkColor: CustomColor.blackColor,
                  value: selectedCategoryItem(index: index),
                  onChanged: (v) {
                    _appProvider.changeSelectedItem(
                        selectedItemVal: v, itemIndex: index);
                  }),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            item.name!,
            style: const TextStyle(color: CustomColor.blackColor),
          )
        ],
      ),
    );
  }

  bool? selectedCategoryItem({required int? index}) {
    if (index == _appProvider.selectedItemIndex) {
      return _appProvider.selectedCategory;
    } else {
      return false;
    }
  }

  Widget colorItem(List<Color> colorList) {
    var delegate = const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 5,
      crossAxisSpacing: 2,
      mainAxisSpacing: 2,
    );

    return SizedBox(
      height: 50,
      width: 100,
      child: GridView.builder(
          itemCount: colorList.length,
          gridDelegate: delegate,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                border: index == 3
                    ? Border.all(width: 1, color: Colors.black)
                    : null,
                color: colorList[index],
                shape: BoxShape.circle,
              ),
            );
          }),
    );
  }

  Widget button({Color? butttonColor, String? text, Color? textColor}) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: butttonColor!,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            text!,
            style: TextStyle(fontSize: 20, color: textColor),
          ),
        ),
      ),
    );
  }
}

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton(
      {required this.icon, required this.onPress, required this.iconSize});

  final IconData icon;
  final VoidCallback onPress;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(width: iconSize, height: iconSize),
      elevation: 0,
      onPressed: onPress,
      shape: RoundedRectangleBorder(
          side: BorderSide(
              color: const Color(0xFF4F527E),
              width: 1.0,
              style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(iconSize * 0.3)),
      // fillColor: Color(0xFF65A34A),
      child: Icon(
        icon,
        color: Color(0xFF4F527E),
        size: iconSize * 0.8,
      ),
    );
  }
}

class CustomStepper extends StatefulWidget {
  CustomStepper({
    required this.lowerLimit,
    required this.upperLimit,
    required this.stepValue,
    required this.iconSize,
    required this.value,
  });

  final int lowerLimit;
  final int upperLimit;
  final int stepValue;
  final double iconSize;
  int value;

  @override
  _CustomStepperState createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RoundedIconButton(
          icon: Icons.remove,
          iconSize: widget.iconSize,
          onPress: () {
            setState(() {
              widget.value = widget.value == widget.lowerLimit
                  ? widget.lowerLimit
                  : widget.value -= widget.stepValue;
            });
          },
        ),
        SizedBox(
          width: (widget.iconSize) * 2.5,
          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5), // if you need this
              side: BorderSide(
                color: const Color(0xFF4F527E),
              ),
            ),
            child: Text(
              '${widget.value}',
              style: TextStyle(
                fontSize: widget.iconSize * 0.8,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        RoundedIconButton(
          icon: Icons.add,
          iconSize: widget.iconSize,
          onPress: () {
            setState(() {
              widget.value = widget.value == widget.upperLimit
                  ? widget.upperLimit
                  : widget.value += widget.stepValue;
            });
          },
        ),
      ],
    );
  }
}
