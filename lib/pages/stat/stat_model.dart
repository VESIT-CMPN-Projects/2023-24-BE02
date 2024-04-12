import '/flutter_flow/flutter_flow_util.dart';
import 'stat_widget.dart' show StatWidget;
import 'package:flutter/material.dart';

class StatModel extends FlutterFlowModel<StatWidget> {
  ///  Local state fields for this page.

  List<String> legends = [
    'Sudden Acc',
    'Left Deviation',
    'Right Deviation',
    'Haphazard',
    'Normal'
  ];
  void addToLegends(String item) => legends.add(item);
  void removeFromLegends(String item) => legends.remove(item);
  void removeAtIndexFromLegends(int index) => legends.removeAt(index);
  void insertAtIndexInLegends(int index, String item) =>
      legends.insert(index, item);
  void updateLegendsAtIndex(int index, Function(String) updateFn) =>
      legends[index] = updateFn(legends[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
