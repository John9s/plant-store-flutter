import 'package:flutter/material.dart';
import 'package:plant_store_flutter/plantIndoor.dart';
import 'package:plant_store_flutter/plantOutdoor.dart';
import 'package:plant_store_flutter/plantsList.dart';

void main() {
  runApp(MaterialApp(home: _PlantApp()));
}

class _PlantApp extends StatefulWidget {
  @override
  __PlantAppState createState() => __PlantAppState();
}

class __PlantAppState extends State<_PlantApp>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.menu,
                    ),
                    onPressed: () {},
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.grey.withOpacity(0.3),
                    mini: true,
                    elevation: 0.0,
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                      size: 17.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(14.0),
            child: Text(
              'Top Picks',
              style: TextStyle(
                  fontFamily: 'Montesserat',
                  fontSize: 40.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.5),
              isScrollable: true,
              tabs: <Widget>[
                Text(
                  'Top',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Monteserrat',
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Outdoor',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Monteserrat',
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Indoor',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Monteserrat',
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Plants',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Monteserrat',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: MediaQuery.of(context).size.height - 200.0,
            child: TabBarView(
              controller: tabController,
              children: [
                PlantsList(),
                PlantsOutdoor(),
                PlantsIndoor(),
                PlantsList(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
