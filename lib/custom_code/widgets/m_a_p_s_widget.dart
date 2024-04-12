// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:mapmyindia_gl/mapmyindia_gl.dart' as lsg show LatLng;

import 'package:mapmyindia_gl/mapmyindia_gl.dart';

class MAPSWidget extends StatefulWidget {
  const MAPSWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _MAPSWidgetState createState() => _MAPSWidgetState();
}

class _MAPSWidgetState extends State<MAPSWidget> {
  MapmyIndiaMapController? mapController;

  @override
  void initState() {
    super.initState();

    // Set the MapMyIndia SDK configurations when the widget is created
    MapmyIndiaAccountManager.setMapSDKKey("9ecfc7e4bcb6da425d8941adf2383839");
    MapmyIndiaAccountManager.setRestAPIKey("9ecfc7e4bcb6da425d8941adf2383839");
    MapmyIndiaAccountManager.setAtlasClientId(
        "96dHZVzsAusKgu2yHZK5-aY0cac29gie6NsuzimJlEreNNug01KScoJwWwLA6wPqLMkUT4Z14ObEAzNPa8RdIA==");
    MapmyIndiaAccountManager.setAtlasClientSecret(
        "lrFxI-iSEg-CNpsO-sWoH91q22uIcIIJru4KA5r2NB-ADLPh0e3i2c9wtpnNF0c_6N41CXivQ9CsQLBH5Ir2KHf_J_B0qerI");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: MapmyIndiaMap(
        initialCameraPosition: CameraPosition(
          target: lsg.LatLng(19.048996361609245, 72.90004858515886),
          zoom: 14.0,
        ),
        onMapCreated: (map) => {
          mapController = map,
        },
      ),
    );
  }
}
