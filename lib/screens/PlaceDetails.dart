import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:terra/utilities/constants.dart';

class PlaceDetails extends StatefulWidget {
  @override
  _PlaceDetailsState createState() => _PlaceDetailsState();
}

class _PlaceDetailsState extends State<PlaceDetails> {
  int photoIndex = 0;
  List<String> photoList = [
    'images/kayaking1.jpg',
    'images/kayaking2.jpg',
    'images/kayaking3.jpg',
  ];
  void _previousImage() {
    setState(() {
      photoIndex = photoIndex < photoList.length - 1
          ? photoIndex = 0
          : photoIndex = photoIndex - 1;
    });
  }

  void _nextImage() {
    setState(() {
      photoIndex =
          photoIndex < photoList.length - 1 ? photoIndex + 1 : photoIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        persistentFooterButtons: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 70.0,
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            decoration: BoxDecoration(
              color: Colors.red[50],
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(
                            fontSize: 21.0, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '\$89 per person',
                        style: TextStyle(
                            fontSize: 17.0, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 130.0,
                  height: 50.0,
                  child: RawMaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        'Book Now',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                      fillColor: kOrangeMainColor,
                      onPressed: () {}),
                ),
              ],
            ),
          ),
        ],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 450.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                      image: DecorationImage(
                        image: AssetImage(photoList[photoIndex]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      color: Colors.transparent,
                      width: MediaQuery.of(context).size.width,
                      height: 450.0,
                    ),
                    onHorizontalDragStart: (DragStartDetails details) {
                      _nextImage();
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      color: Colors.transparent,
                      width: MediaQuery.of(context).size.width / 2,
                      height: 450.0,
                    ),
                    onHorizontalDragStart: (DragStartDetails details) {
                      _previousImage();
                    },
                  ),
                  Positioned(
                    top: 425.0,
                    left: 25.0,
                    right: 25.0,
                    child: SelectedPhoto(
                      numberOfDots: photoList.length,
                      photoIndex: photoIndex,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 25.0,
                  left: 15.0,
                  right: 15.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    Text(
                      'Prince William Sound',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 35.0),
                      child: Text(
                        'Distance',
                        style: TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10.0, top: 5.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: kOrangeMainColor,
                        ),
                        Text(
                          'Alaska,USA',
                          style: TextStyle(
                            fontSize: 19.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      right: 15.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '12.6 Km',
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Container(
                            height: 25.0,
                            width: 25.0,
                            child: SvgPicture.asset(
                              'images/route.svg',
                              color: kOrangeMainColor,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                height: 30.0,
                thickness: 1.0,
                indent: 50.0,
                endIndent: 50.0,
                color: Colors.grey[200],
              ),
              Container(
                height: 30.0,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    AboutTab(features: 'About'),
                    SizedBox(
                      width: 35.0,
                    ),
                    AboutTab(features: 'Departures'),
                    SizedBox(
                      width: 35.0,
                    ),
                    AboutTab(features: 'Meeting point'),
                    SizedBox(
                      width: 35.0,
                    ),
                    AboutTab(features: 'Guide'),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: Text(
                  'This is a great guided trip for those wanting an introduction to sea kayaking, light exercise and adventure. Spectacular views and rugged coastline will be experienced',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 17.0,
                    color: Colors.black54,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutTab extends StatelessWidget {
  final String features;

  AboutTab({@required this.features});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        features,
        style: TextStyle(
            color: Colors.grey[700],
            fontSize: 20.0,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}

class SelectedPhoto extends StatelessWidget {
  final int numberOfDots;
  final int photoIndex;

  SelectedPhoto({this.numberOfDots, this.photoIndex});
  Widget _inactivePhoto() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 3.2, right: 3.2),
        child: Container(
          height: 4.0,
          width: 16.0,
          decoration: BoxDecoration(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  Widget _activePhoto() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 5.0, right: 5.0),
        child: Container(
          height: 5.0,
          width: 20.0,
          decoration: BoxDecoration(
            color: Colors.white,
            // borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }

  List<Widget> buildDots() {
    List<Widget> dots = [];
    for (int i = 0; i <= numberOfDots - 1; i++) {
      dots.add(i == photoIndex ? _activePhoto() : _inactivePhoto());
    }
    return dots;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: buildDots(),
      ),
    );
  }
}
