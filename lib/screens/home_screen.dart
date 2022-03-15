import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zil/constants/custom_color.dart';
import 'package:zil/models/model.dart';
import 'package:zil/widgets/top_bar.dart';

import '../../provider/app_provider.dart';

class HomeScreen extends StatelessWidget {
  late AppProvider _appProvider;

  @override
  Widget build(BuildContext context) {
    _appProvider = Provider.of<AppProvider>(context);
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TopBar(),
                      Padding(
                        padding: const EdgeInsets.only(left: 60.0),
                        child: menuItemsRow(context),
                      ),

                      const SizedBox(
                        height: 40,
                      ),

                      //filterContainer
                      filterContainer(context)
                    ],
                  ),
                ))));
  }

  Row menuItemsRow(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        SizedBox(
          height: 40,
          child: Card(
            elevation: 8,
            child: Image.asset("assets/images/back_arrow.png"),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
        const Spacer(),
        SizedBox(
          width: (width * .9) - 100,
          height: 40,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 8,
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
        )
      ],
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                "Filters",
                style: TextStyle(
                    color: CustomColor.blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
              const SizedBox(
                width: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 5.0),
                child: Text(
                  "Clear filters",
                  style: TextStyle(
                      color: CustomColor.clearFilterColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      decoration: TextDecoration.underline),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      width: width / 6,
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: CustomColor.lightVioletColor),
                      child: Center(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _appProvider.filterList.length,
                          itemBuilder: (context, index) {
                            if (index == _appProvider.selectedFilteredIndex) {
                              return InkWell(
                                borderRadius: BorderRadius.circular(2),
                                onTap: () {
                                  _appProvider.changeFilterIndex(
                                      selectedFilterIndex2: index);
                                },
                                child: SizedBox(
                                  height: 25,
                                  child: Card(
                                    margin: EdgeInsets.zero,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      child: Center(
                                        child: Text(
                                          _appProvider.filterList[index],
                                          style: const TextStyle(
                                              color: CustomColor.lightBlueColor,
                                              fontSize: 11),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: InkWell(
                                onTap: () {
                                  _appProvider.changeFilterIndex(
                                      selectedFilterIndex2: index);
                                },
                                child: Center(
                                  child: Text(
                                    _appProvider.filterList[index],
                                    style: const TextStyle(fontSize: 11),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                      width: 52,
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: CustomColor.darkBlueColor.withOpacity(.2)),
                      child: Center(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _appProvider.sortByList.length,
                          itemBuilder: (context, index) {
                            String sortBy = _appProvider.sortByList[index];
                            if (index == _appProvider.selectedSortedByIndex) {
                              return InkWell(
                                borderRadius: BorderRadius.circular(2),
                                onTap: () {
                                  _appProvider.changeSortByIndex(
                                      selectedSortByIndex2: index);
                                },
                                child: SizedBox(
                                  height: 25,
                                  child: Card(
                                    margin: EdgeInsets.zero,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      child: Center(
                                        child: Image.asset(sortBy),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: InkWell(
                                onTap: () {
                                  _appProvider.changeSortByIndex(
                                      selectedSortByIndex2: index);
                                },
                                child: Center(
                                  child: Image.asset(sortBy),
                                ),
                              ),
                            );
                          },
                        ),
                      )),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Categories",
            style: TextStyle(
                color: CustomColor.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 18),
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

          const SizedBox(
            height: 20,
          ),
          const Text(
            "Color",
            style: TextStyle(
                color: CustomColor.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          const SizedBox(
            height: 10,
          ),

          //colorsGrid
          colorItem(_appProvider.colorList),

          const Text(
            "Size",
            style: TextStyle(
                color: CustomColor.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          const SizedBox(
            height: 10,
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
                color: colorList[index],
                shape: BoxShape.circle,
              ),
            );
          }),
    );
  }
}
