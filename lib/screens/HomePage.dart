import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:terra/screens/ActivitiesPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 100.0,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45.withOpacity(0.5),
                    spreadRadius: 7,
                    blurRadius: 7,
                    offset: Offset(0, 5), //change position of shadow
                  ),
                ],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0)),
                image: DecorationImage(
                  image: AssetImage('images/adv1.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.darken),
                )),
          ),
          Positioned(
            top: 50.0,
            left: 20.0,
            child: Text(
              'Terventures',
              style: GoogleFonts.piedra(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
          ),
          Positioned(
            top: 100.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 30.0,
                    padding: EdgeInsets.only(
                      left: 5.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: TextField(
                      showCursor: false,
                      decoration: InputDecoration(
                        hintText: 'Search Locations',
                        hintStyle: GoogleFonts.notoSans(
                          fontSize: 16.0,
                          color: Colors.white,
                          textStyle: TextStyle(color: Colors.white),
                        ),
                        fillColor: Colors.grey.withOpacity(0.5),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50.0),
                Container(
                    margin: EdgeInsets.only(left: 5.0),
                    width: 120.0,
                    height: 120.0,
                    child: Image.asset('images/terraLogo.png')),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Let The Journey\nBegin',
                    style: GoogleFonts.allura(
                        fontSize: 46.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: RawMaterialButton(
                      padding: EdgeInsets.only(left: 15.0, right: 15.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Text('View Trials'),
                      fillColor: Color(0xFFFF473C),
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ActivitiesPages()),
                        );
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
