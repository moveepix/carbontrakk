import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<EmissionAnnualSummaryByEmissionTypeRow> emissionSum = [];
  void addToEmissionSum(EmissionAnnualSummaryByEmissionTypeRow item) =>
      emissionSum.add(item);
  void removeFromEmissionSum(EmissionAnnualSummaryByEmissionTypeRow item) =>
      emissionSum.remove(item);
  void removeAtIndexFromEmissionSum(int index) => emissionSum.removeAt(index);
  void insertAtIndexInEmissionSum(
          int index, EmissionAnnualSummaryByEmissionTypeRow item) =>
      emissionSum.insert(index, item);
  void updateEmissionSumAtIndex(int index,
          Function(EmissionAnnualSummaryByEmissionTypeRow) updateFn) =>
      emissionSum[index] = updateFn(emissionSum[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in HomePage widget.
  List<BusinessRow>? bisnis;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
