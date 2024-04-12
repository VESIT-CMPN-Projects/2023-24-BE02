import '/flutter_flow/flutter_flow_util.dart';
import 'settings_display_main_widget.dart' show SettingsDisplayMainWidget;
import 'package:flutter/material.dart';

class SettingsDisplayMainModel
    extends FlutterFlowModel<SettingsDisplayMainWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Slider widget.
  double? sliderValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
