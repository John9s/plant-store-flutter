import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant_store_flutter/plantdetails.dart';

class PlantsList extends StatefulWidget {
  @override
  __PlantsListState createState() => __PlantsListState();
}

class __PlantsListState extends State<PlantsList> {
  late ScrollController _scrollController;
  String description = '';

  List allDescriptions = [
    'Aloe Vera is a succelent plant of the genus Aloe. It\'s medical uses and air purifying functions make it perfect for home uses',
    'Second description',
    'Third description'
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(changedesc);
    setState(() {
      description = allDescriptions[0];
    });
  }

  void changedesc() {
    var value = _scrollController.offset.round();
    var descIndex = (value / 150).round();
    print(value);
    setState(() {
      description = allDescriptions[descIndex.toInt()];
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 350.0,
          child: ListView(
            padding: EdgeInsets.only(left: 25.0),
            scrollDirection: Axis.horizontal,
            children: [
              getPlantCard(
                  'assets/aloe_vera.jpeg', '25', 'OUTDOOR', 'Aloe Vera'),
              SizedBox(
                width: 25.0,
              ),
              getPlantCard(
                  'assets/kentia_palm.jpg', '15', 'INDOOR', 'Kentia Palm'),
              SizedBox(
                width: 25.0,
              ),
              getPlantCard(
                  'assets/snake_plant.jpg', '10', 'OUTDOOR', 'Snake Plant'),
              SizedBox(
                width: 25.0,
              ),
              getPlantCard('assets/yuccaba_italia_plant.jpg', '30', 'INDOOR',
                  'Yuccaba Italia'),
              SizedBox(
                width: 25.0,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.0, top: 10.0),
          child: Text(
            'Description',
            style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.black,
                fontSize: 17.0,
                fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.0, top: 10.0),
          child: Text(
            description,
            style: TextStyle(
                fontFamily: 'Montserrat', color: Colors.black, fontSize: 12.0),
          ),
        ),
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
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PlantDetails()));
                      },
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
