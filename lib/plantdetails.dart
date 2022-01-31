import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlantDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Color(0xFF399D63)),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width - 60.0,
                        top: 10.0),
                    child: FloatingActionButton(
                      onPressed: () {},
                      mini: true,
                      backgroundColor: Color(0xFF8AC7A4).withOpacity(0.3),
                      elevation: 0.0,
                      child: FaIcon(
                        FontAwesomeIcons.shoppingCart,
                        color: Colors.white,
                        size: 17.0,
                      ),
                    )),
                Positioned(
                  top: 10.0,
                  left: MediaQuery.of(context).size.width - 30.0,
                  child: Container(
                    height: 18.0,
                    width: 18.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'Montesserat'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: MediaQuery.of(context).size.height / 2,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20.0)),
                      ),
                    )),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 70.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'INDOOR',
                        style: TextStyle(
                            color: Color(0xFF8AC7A4),
                            fontFamily: 'Montesserat',
                            fontSize: 14.0),
                      ),
                      Text(
                        'Ficus',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montesserat',
                            fontSize: 40.0,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'FROM',
                        style: TextStyle(
                            color: Color(0xFF8AC7A4),
                            fontFamily: 'Montesserat',
                            fontSize: 14.0),
                      ),
                      Text(
                        '\$30',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montesserat',
                            fontSize: 18.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'SIZES',
                        style: TextStyle(
                            color: Color(0xFF8AC7A4),
                            fontFamily: 'Montesserat',
                            fontSize: 14.0),
                      ),
                      Text(
                        'Small',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montesserat',
                            fontSize: 18.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.black,
                          mini: false,
                          child: Icon(
                            Icons.add_shopping_cart_outlined,
                          ))
                    ],
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 2 - 200,
                  left: MediaQuery.of(context).size.width / 2 - 50,
                  child: Image.asset(
                    'assets/pic.png',
                    fit: BoxFit.cover,
                    height: 250.0,
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 2 + 60,
                  child: Container(
                    margin: EdgeInsets.only(left: 25.0, top: 30.0),
                    width: MediaQuery.of(context).size.width - 30,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'All to Know...',
                            style: TextStyle(
                                fontFamily: 'Monotesserat',
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 14.0),
                          Text(
                            'If your\'re completely new to house plants, then Ficus is a brilliant first plant to adopt, it is very easy to look after and won\'t occupy too much space.',
                            style: TextStyle(
                                fontFamily: 'Monotesserat',
                                fontSize: 12,
                                color: Colors.black26),
                          ),
                          SizedBox(
                            height: 38.0,
                          ),
                          Text(
                            'Details',
                            style: TextStyle(
                                fontFamily: 'Monotesserat',
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Plant height: 35-45cm \n Nursery pot width: 12cm',
                            style: TextStyle(
                                fontFamily: 'Monotesserat',
                                fontSize: 12,
                                color: Colors.black26),
                          ),
                        ]),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
