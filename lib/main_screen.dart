import 'package:flutter/material.dart';
import 'package:plantcare/detail_plant_screen.dart';
import 'package:plantcare/plant_list.dart';
import 'package:plantcare/style_theme.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: StyleTheme.nearlyWhite,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            getAppBar(),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(bottom: 16.0), // Adjust the padding as needed
                child: Column(
                  children: <Widget>[
                    getSearchBar(),
                    Expanded(
                      child: getPlantCare(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget getAppBar() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18, right: 18),
      child: Row(
        children: <Widget>[
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Lets Find',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    letterSpacing: 0.2,
                    color: StyleTheme.grey,
                  ),
                ),
                Text(
                  'Favorite Plant',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    letterSpacing: 0.27,
                    color: StyleTheme.darkerText,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: StyleTheme.nearlyWhite,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 7,
                ),
              ],
            ),
            child: const Icon(Icons.favorite, color: StyleTheme.nearlyGreen),
          )

        ],
      ),
    );
  }

  Widget getPlantCare() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18, right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Plant Care',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              letterSpacing: 0.27,
              color: StyleTheme.darkerText,
            ),
          ),
          Flexible(
            child: plantList(
              callBack: () {
                moveTo();
              },
            ),
          )
        ],
      ),
    );
  }

  Widget getSearchBar() {
    return Padding(
      padding: const EdgeInsets.only(top: 32, left: 20, right: 20, bottom: 20),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(13),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: TextFormField(
                  style: const TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: StyleTheme.nearlyGreen,
                  ),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Search for plant',
                    border: InputBorder.none,
                    helperStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: Colors.grey[300],
                    ),
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      letterSpacing: 0.2,
                      color: Colors.grey[600],
                    ),
                  ),
                  onEditingComplete: () {},
                ),
              ),
            ),
            Container(
              width: 50,  // Change the width here
              height: 50,
              decoration: BoxDecoration(
                color: StyleTheme.nearlyGreen,
                borderRadius: BorderRadius.circular(13),
              ),
              child: const Icon(Icons.search, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  void moveTo() {
    Navigator.push<dynamic>(
      context,
      MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => const DetailPlantScreen(),
      ),
    );
  }

}
