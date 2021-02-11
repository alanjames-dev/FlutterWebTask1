import 'package:flutter/material.dart';
import 'package:task_1/Map/map.dart';
import 'package:task_1/location_details/location_deatils.dart';
import 'package:task_1/widgets/navigation_bar/centered_view/centered_view.dart';
import 'package:task_1/widgets/navigation_bar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
            NavigationBar(),
            Expanded(
                child: Row(
              children: [
                LocationDetails(),
                Expanded(
                  child: Center(
                    child: Container(height: 400, width: 500,child: GoogleMap(),)
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
