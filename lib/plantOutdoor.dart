import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlantsOutdoor extends StatefulWidget {
  @override
  __PlantsOutdoorState createState() => __PlantsOutdoorState();
}

class __PlantsOutdoorState extends State<PlantsOutdoor> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 350.0,
          child: ListView(
            padding: EdgeInsets.only(left: 35.0),
            scrollDirection: Axis.horizontal,
            children: [
              getPlantCard(
                  'assets/aloe_vera.jpeg', '25', 'OUTDOOR', 'Aloe Vera'),
              SizedBox(
                width: 25.0,
              ),
              getPlantCard(
                  'assets/snake_plant.jpg', '10', 'OUTDOOR', 'Snake Plant'),
              SizedBox(
                width: 25.0,
              ),
            ],
          ),
        )
      ],
    );
  }

  getPlantCard(
      String imgPath, String price, String plantType, String plantName) {
    return Stack(
      children: [
        Container(
          height: 325.0,
          width: 225.0,
          child: Container(
            height: 250.0,
            width: 225.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xFF399D63),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'FROM',
                          style: TextStyle(
                              fontFamily: 'Montesserat',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF8AC7A4)),
                        ),
                        Text(
                          '\$' + price,
                          style: TextStyle(
                              fontFamily: 'Montesserat',
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    )
                  ],
                ),
                Image.asset(imgPath, height: 165.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 25.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          plantType,
                          style: TextStyle(
                              fontFamily: 'Montesserat',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF8AC7A4)),
                        ),
                        Text(
                          plantName,
                          style: TextStyle(
                              fontFamily: 'Montesserat',
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    )
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    SizedBox(width: 25.0),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF8AC7A4),
                          style: BorderStyle.solid,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xFF399D63),
                      ),
                      child: Icon(
                        Icons.wb_sunny,
                        color: Colors.white.withOpacity(0.4),
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF8AC7A4),
                          style: BorderStyle.solid,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xFF399D63),
                      ),
                      child: Center(
                        child: FaIcon(FontAwesomeIcons.tint,
                            color: Colors.white.withOpacity(0.4)),
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF8AC7A4),
                          style: BorderStyle.solid,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xFF399D63),
                      ),
                      child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.thermometerHalf,
                          color: Colors.white.withOpacity(0.4),
                        ),
                      ),
                    ),
                    SizedBox(width: 15.0),
                    InkWell(
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color(0xFF399D63),
                        ),
                        child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.questionCircle,
                            color: Colors.white.withOpacity(0.4),
                          ),
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 90.0, top: 300.0),
          child: Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0), color: Colors.black),
            child: Center(
                child: FaIcon(
              FontAwesomeIcons.cartPlus,
              color: Colors.white,
            )),
          ),
        )
      ],
    );
  }
}
