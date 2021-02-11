import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_maps/google_maps.dart';
import 'dart:ui' as ui;

class GoogleMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String htmlId = "7";

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
      final myLatlng = LatLng(11.000639, 78.458861);

      final mapOptions = MapOptions()
        ..zoom = 10
        ..center = LatLng(11.000639, 78.458861);
      // map.setMapTypeId('satellite');

      final elem = DivElement()
        ..id = htmlId
        ..style.width = "100%"
        ..style.height = "100%"
        ..style.border = 'none';

      final map = GMap(elem, mapOptions);

      Marker(MarkerOptions()
        ..position = myLatlng
        ..map = map
        ..title = 'Tiruchirappalli, Tamil Nadu');

      return elem;
    });

    return HtmlElementView(viewType: htmlId);
  }
}
