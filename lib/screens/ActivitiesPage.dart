import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:terra/screens/PlaceDetails.dart';
import 'package:terra/utilities/ActivitiesPageWidget.dart';
import 'package:terra/utilities/constants.dart';

class ActivitiesPages extends StatefulWidget {
  @override
  _ActivitiesPagesState createState() => _ActivitiesPagesState();
}

class _ActivitiesPagesState extends State<ActivitiesPages> {
  //be5las activity class w bl activity class bta3refa ayya type w 7asab l type i update the imgages..
  void updatePlaces() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: kBackGroundColor,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 15.0, left: 15.0),
                    child: RichText(
                      text: TextSpan(
                        text: 'Welcome to\n',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                        children: [
                          TextSpan(
                            text: 'Terventures',
                            style: TextStyle(
                                letterSpacing: 2.0,
                                fontSize: 21.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/adv1.jpg'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    VerticalDivider(
                      color: Colors.black,
                      width: 25.0,
                      thickness: 5.0,
                    ),
                    Container(
                      child: Text(
                        'Activities',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 180.0,
                    ),
                    Container(
                        child: Text(
                      'Show all',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.all(
                  10.0,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width - 20.0,
                  height: 80.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ActivityList(
                        imgPath: 'images/kayak.svg',
                        imgTitle: 'Kayaking',
                      ),
                      ActivityList(
                        imgPath: 'images/camping.svg',
                        imgTitle: 'Camping',
                      ),
                      ActivityList(
                        imgPath: 'images/climbing.svg',
                        imgTitle: 'Climbing',
                      ),
                      ActivityList(
                        imgPath: 'images/hiking.svg',
                        imgTitle: 'Hiking',
                      ),
                      ActivityList(
                        imgPath: 'images/snorkle.svg',
                        imgTitle: 'Snorkeling',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    VerticalDivider(
                      color: Colors.black,
                      width: 25.0,
                      thickness: 5.0,
                    ),
                    Container(
                      child: Text(
                        'Popular Places',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 20.0,
                    height: MediaQuery.of(context).size.height - 100.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        PopularPlaces(
                          imgPath: 'images/kayaking1.jpg',
                          placeTitle: 'Price William Sound',
                          placeLocation: 'Alaska',
                        ),
                        PopularPlaces(
                          imgPath: 'images/kayaking2.jpg',
                          placeTitle: 'Sea of Cortez',
                          placeLocation: 'California',
                        ),
                        PopularPlaces(
                          imgPath: 'images/kayaking3.jpg',
                          placeTitle: 'Amazon River',
                          placeLocation: 'South America',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
