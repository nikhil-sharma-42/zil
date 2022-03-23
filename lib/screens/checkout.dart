import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app/size_config.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  final _sizeConfig = SizeConfig();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    _sizeConfig.init(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 90.0, vertical: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Color(0xFF242860),
                size: 25,
              ),
              label: Text(
                'Back To Cart',
                style: TextStyle(
                    color: Color(0xFF242860),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF3F3F3),
                    border: Border.all(color: Color(0xFF242860)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  width: SizeConfig.screenWidth! * 0.7,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 35,
                          color: Color(0xFF242860),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18.0, vertical: 8),
                              child: Text(
                                'Delivery Address',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        notificationBar(),
                        notificationBar(),
                        SizedBox(
                          height: 20,
                        ),
                        addNewAddressButton(),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          decoration: BoxDecoration(color: Colors.white),
                          width: SizeConfig.screenWidth! * 0.6,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  textField('First Name'),
                                  textField('Last Name'),
                                ],
                              ),
                              Container(
                                  width: SizeConfig.screenWidth! * 0.9,
                                  child: textField('Delivery Address')),
                              Row(
                                children: [
                                  textField('City'),
                                  textField('State'),
                                  textField('Zip'),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 20, bottom: 30, top: 5),
                                child: button(
                                    text: 'ADD ADDRESS',
                                    width: MediaQuery.of(context).size.width *
                                        0.15),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFFF3F3F3),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Payment Summary',
                          style: TextStyle(
                              color: Color(0xFF1D1751),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Price',
                              style: TextStyle(
                                  color: Color(0xFF1D1751), fontSize: 20),
                            ),
                            Text(
                              '300',
                              style: TextStyle(
                                  color: Color(0xFF1D1751),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Discount',
                              style: TextStyle(
                                  color: Color(0xFF1D1751), fontSize: 20),
                            ),
                            Text(
                              '0',
                              style: TextStyle(
                                  color: Color(0xFF1D1751),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Delivery Charges',
                              style: TextStyle(
                                  color: Color(0xFF1D1751), fontSize: 20),
                            ),
                            Text(
                              '40',
                              style: TextStyle(
                                  color: Color(0xFF1D1751),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Divider(
                          thickness: 2,
                          color: Color(0xFFD8D8D8),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Amount',
                              style: TextStyle(
                                color: Color(0xFF1D1751),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '340',
                              style: TextStyle(
                                  color: Color(0xFF1D1751),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        button(
                            text: 'PLACE ORDER',
                            width: MediaQuery.of(context).size.width * 0.45),
                        SizedBox(
                          height: 10,
                        ),
                      ]),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }

  Widget button({String? text, double? width}) {
    return Container(
      // padding: EdgeInsets.only(left: 20, bottom: 30),
      width: width,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Color(0xFF242860),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          elevation: 0.0,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            text!,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget textField(
    String text,
  ) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 1, color: Color(0xFF8D8D8D)),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget addNewAddressButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              color: Color(0xFF242860),
            ),
            label: Text(
              'Add New Address',
              style: TextStyle(
                  color: Color(0xFF242860),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            )),
      ),
    );
  }

  Widget notificationBar() {
    return Container(
      height: SizeConfig.screenHeight! * 0.04,
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Badge(
        shape: BadgeShape.square,
        badgeColor: Color(0xFF242860),
        badgeContent: Icon(
          Icons.close,
          color: Colors.white,
          size: 10,
        ),
        position: BadgePosition.topEnd(
          top: -12,
        ),
        child: Row(children: [
          CircleAvatar(
            backgroundColor: Color(0xFFC4C4C4),
            radius: 8,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
              'Lorem ipsum 345 ,   dolor sit amet, consectetur adipiscing elit. Sed interdum metus in eros congue gravida.'),
        ]),
      ),
    );
  }
}
