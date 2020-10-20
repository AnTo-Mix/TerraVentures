import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:terra/models/Adventures.dart';
import 'package:terra/screens/PlaceDetails.dart';

import 'constants.dart';

//Activities Cards
class ActivityList extends StatefulWidget {
  final String imgPath;
  final String imgTitle;

  ActivityList({
    @required this.imgPath,
    @required this.imgTitle,
  });

  @override
  _ActivityListState createState() => _ActivityListState();
}

class _ActivityListState extends State<ActivityList> {
  Color imgColor;
  AdventureActivities _adventureActivities = AdventureActivities();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          imgColor = kOrangeMainColor;
        });
      },
      child: Container(
        height: 80.0,
        width: 80.0,
        margin: EdgeInsets.only(left: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50.0,
              width: 50.0,
              child: SvgPicture.asset(
                widget.imgPath,
                color: imgColor == Colors.black
                    ? imgColor = kOrangeMainColor
                    : kOrangeMainColor,
              ),
            ),
            Text(
              widget.imgTitle,
            ),
          ],
        ),
      ),
    );
  }
}

//Popular Places Card
class PopularPlaces extends StatelessWidget {
  final String imgPath;
  final String placeTitle;
  final String placeLocation;

  PopularPlaces(
      {@required this.imgPath,
      @required this.placeTitle,
      @required this.placeLocation});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        overflow: Overflow.clip,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PlaceDetails()));
            },
            child: Container(
              width: 220.0,
              height: 400.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage(imgPath),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.darken),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 80.0,
            left: 5.0,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    placeTitle,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    placeLocation,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.white70,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white70,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white70,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white70,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white70,
                      ),
                      Text(
                        '1.8k',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16.0,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
