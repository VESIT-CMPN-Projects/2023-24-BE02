import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'diag1_widget.dart' show Diag1Widget;
import 'package:flutter/material.dart';

class Diag1Model extends FlutterFlowModel<Diag1Widget> {
  ///  Local state fields for this page.

  dynamic monthlyCurrent;

  dynamic monthlyVoltage;

  dynamic monthlyTemp;

  dynamic weeklyCurrent;

  dynamic weeklyVoltage;

  dynamic weeklyTemp;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in diag1 widget.
  List<RidesRow>? collections;
  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;

  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  // State field(s) for TabBar widget.
  TabController? tabBarController3;
  int get tabBarCurrentIndex3 =>
      tabBarController3 != null ? tabBarController3!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController1?.dispose();
    tabBarController2?.dispose();
    tabBarController3?.dispose();
  }
}
