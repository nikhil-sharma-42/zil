import 'package:flutter/material.dart';
import '../app/size_config.dart';
import '../widgets/landing_top_bar.dart';

class LandingScreen extends StatefulWidget {
  LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final _sizeConfig = SizeConfig();

  ScrollController scrollController = ScrollController();
  ScrollController scrollController2 = ScrollController();
  GlobalKey scrollKey = GlobalKey();
  GlobalKey scrollKey2 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    _sizeConfig.init(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: (SizeConfig.screenHeight!) * 1.3,
              child: Stack(children: [
                Container(
                  height: (SizeConfig.screenHeight! / 1.2),
                  width: SizeConfig.screenWidth,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1505804750389-62ac45da38b7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                        fit: BoxFit.cover),
                  ),
                  child: Column(children: [
                    Expanded(
                      child: LandingTopBar(),
                    ),
                    Expanded(child: SizedBox())
                  ]),
                ),
                titledImagesRows()
              ]),
            ),
            onOfferRow(),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.04,
            ),
            trendingCollectionRow(),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.04,
            ),
            onOfferRow2(),
          ],
        ),
      ),
    );
  }

  Widget titledImagesRows() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        // color: Colors.black,
        // margin: EdgeInsets.only(bottom: 80, left: 50, right: 50),
        height: SizeConfig.screenHeight! * .5,
        child: Column(
          children: [
            Container(
              height: 150,
              width: SizeConfig.screenWidth! / 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  rotatedCards(
                    context,
                    100,
                    100,
                    'https://images.unsplash.com/photo-1563729784474-d77dbb933a9e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                  ),
                  rotatedCards(context, 130, 130,
                      'https://images.unsplash.com/photo-1602351447937-745cb720612f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80',
                      isOpacity: true),
                  rotatedCards(context, 100, 100,
                      'https://images.unsplash.com/photo-1493625926644-63185e3d4e15?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=416&q=80'),
                  rotatedCards(context, 100, 100,
                      'https://images.unsplash.com/photo-1452827073306-6e6e661baf57?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
                ],
              ),
            ),
            Container(
              height: 150,
              width: SizeConfig.screenWidth! / 1.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  rotatedCards(context, 130, 130,
                      'https://images.unsplash.com/photo-1588195538326-c5b1e9f80a1b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80'),
                  SizedBox(
                    width: 50,
                  ),
                  rotatedCards(context, 130, 130,
                      'https://images.unsplash.com/photo-1571115177098-24ec42ed204d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                  SizedBox(
                    width: 50,
                  ),
                  rotatedCards(context, 130, 130,
                      'https://images.unsplash.com/photo-1586985289688-ca3cf47d3e6e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                  SizedBox(
                    width: 50,
                  ),
                  rotatedCards(context, 130, 130,
                      'https://images.unsplash.com/photo-1527061011665-3652c757a4d4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80'),
                  SizedBox(
                    width: 50,
                  ),
                  rotatedCards(context, 130, 130,
                      'https://images.unsplash.com/photo-1495231916356-a86217efff12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=436&q=80'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget onOfferRow() {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text(
            'On Offer/Best Sellers',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: SizeConfig.screenWidth! * 0.015),
          ),
        ),
        SizedBox(
          height: SizeConfig.screenHeight! * 0.03,
        ),
        Row(
          children: [
            Center(
              child: IconButton(
                  onPressed: () {
                    double minScroll =
                        scrollController.position.minScrollExtent;
                    if (scrollController.position.pixels != minScroll) {
                      scrollController
                          .jumpTo(scrollController.position.extentAfter);
                    }
                  },
                  icon: Icon(Icons.arrow_back_ios)),
            ),
            Expanded(
              child: Container(
                height: SizeConfig.screenHeight! / 3,
                // width: MediaQuery.of(context).size.width * 0.90,
                child: ListView.builder(
                    key: scrollKey,
                    controller: scrollController,
                    scrollDirection: Axis.horizontal,
                    // shrinkWrap: true,
                    itemCount: 15,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                          width: SizeConfig.screenHeight! / 4,
                          height: SizeConfig.screenWidth! / 4,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Colors.grey.shade400,
                          ));
                    }),
              ),
            ),
            Center(
              child: IconButton(
                  onPressed: () {
                    double maxScroll =
                        scrollController.position.maxScrollExtent;
                    if (scrollController.position.pixels != maxScroll) {
                      scrollController
                          .jumpTo(scrollController.position.extentAfter);
                    }
                  },
                  icon: Icon(Icons.arrow_forward_ios_rounded)),
            ),
          ],
        )
      ],
    ));
  }

  Widget trendingCollectionRow() {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Trending Collection',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig.screenWidth! * 0.015),
        ),
        SizedBox(
          height: SizeConfig.screenHeight! * 0.03,
        ),
        Container(
          height: SizeConfig.screenHeight! / 9,
          width: MediaQuery.of(context).size.width * 0.95,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              // shrinkWrap: true,
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                    width: SizeConfig.screenWidth! / 9,
                    height: SizeConfig.screenHeight! / 20,
                    child: Padding(
                      padding:
                          EdgeInsets.only(right: SizeConfig.screenWidth! / 90),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Colors.grey.shade400,
                      ),
                    ));
              }),
        )
      ],
    ));
  }

  Widget onOfferRow2() {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text(
            'On Offer/Best Sellers',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: SizeConfig.screenWidth! * 0.015),
          ),
        ),
        SizedBox(
          height: SizeConfig.screenHeight! * 0.03,
        ),
        Row(
          children: [
            Center(
              child: IconButton(
                  onPressed: () {
                    double minScroll =
                        scrollController2.position.minScrollExtent;
                    if (scrollController2.position.pixels != minScroll) {
                      scrollController2
                          .jumpTo(scrollController2.position.extentAfter);
                    }
                  },
                  icon: Icon(Icons.arrow_back_ios)),
            ),
            Expanded(
              child: Container(
                height: SizeConfig.screenHeight! / 3,
                // width: MediaQuery.of(context).size.width * 0.90,
                child: ListView.builder(
                    key: scrollKey2,
                    controller: scrollController2,
                    scrollDirection: Axis.horizontal,
                    // shrinkWrap: true,
                    itemCount: 15,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                          width: SizeConfig.screenHeight! / 4,
                          height: SizeConfig.screenWidth! / 4,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Colors.grey.shade400,
                          ));
                    }),
              ),
            ),
            Center(
              child: IconButton(
                  onPressed: () {
                    double maxScroll =
                        scrollController2.position.maxScrollExtent;
                    if (scrollController2.position.pixels != maxScroll) {
                      scrollController2
                          .jumpTo(scrollController2.position.extentAfter);
                    }
                  },
                  icon: Icon(Icons.arrow_forward_ios_rounded)),
            ),
          ],
        )
      ],
    ));
  }

  Widget rotatedCards(
      BuildContext context, double height, double width, String imageURL,
      {bool isOpacity = false}) {
    return Transform.rotate(
      angle: 1.0,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        color: Colors.white.withOpacity(.5),
        child: SizedBox(
          height: height,
          width: width,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Opacity(
              opacity: isOpacity ? .5 : 1,
              child: Image.network(
                imageURL,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
