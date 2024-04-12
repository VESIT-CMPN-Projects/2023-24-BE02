import '/flutter_flow/flutter_flow_util.dart';
import 'settings_sound_widget.dart' show SettingsSoundWidget;
import 'package:flutter/material.dart';

class SettingsSoundModel extends FlutterFlowModel<SettingsSoundWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Slider widget.
  double? sliderValue1;
  // State field(s) for Slider widget.
  double? sliderValue2;
  // State field(s) for Slider widget.
  double? sliderValue3;
  // State field(s) for Slider widget.
  double? sliderValue4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
