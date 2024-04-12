import '/flutter_flow/flutter_flow_util.dart';
import 'setting_wifi_widget.dart' show SettingWifiWidget;
import 'package:flutter/material.dart';

class SettingWifiModel extends FlutterFlowModel<SettingWifiWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
