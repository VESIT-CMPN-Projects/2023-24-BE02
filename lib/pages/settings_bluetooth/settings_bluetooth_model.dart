import '/flutter_flow/flutter_flow_util.dart';
import 'settings_bluetooth_widget.dart' show SettingsBluetoothWidget;
import 'package:flutter/material.dart';

class SettingsBluetoothModel extends FlutterFlowModel<SettingsBluetoothWidget> {
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
