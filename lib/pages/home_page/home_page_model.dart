import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<EmissionAnnualAvgSummaryRow> avgAnnualEmission = [];
  void addToAvgAnnualEmission(EmissionAnnualAvgSummaryRow item) =>
      avgAnnualEmission.add(item);
  void removeFromAvgAnnualEmission(EmissionAnnualAvgSummaryRow item) =>
      avgAnnualEmission.remove(item);
  void removeAtIndexFromAvgAnnualEmission(int index) =>
      avgAnnualEmission.removeAt(index);
  void insertAtIndexInAvgAnnualEmission(
          int index, EmissionAnnualAvgSummaryRow item) =>
      avgAnnualEmission.insert(index, item);
  void updateAvgAnnualEmissionAtIndex(
          int index, Function(EmissionAnnualAvgSummaryRow) updateFn) =>
      avgAnnualEmission[index] = updateFn(avgAnnualEmission[index]);

  List<EmissionAnnualSummaryByEmissionTypeRow> yearlyEmission = [];
  void addToYearlyEmission(EmissionAnnualSummaryByEmissionTypeRow item) =>
      yearlyEmission.add(item);
  void removeFromYearlyEmission(EmissionAnnualSummaryByEmissionTypeRow item) =>
      yearlyEmission.remove(item);
  void removeAtIndexFromYearlyEmission(int index) =>
      yearlyEmission.removeAt(index);
  void insertAtIndexInYearlyEmission(
          int index, EmissionAnnualSummaryByEmissionTypeRow item) =>
      yearlyEmission.insert(index, item);
  void updateYearlyEmissionAtIndex(int index,
          Function(EmissionAnnualSummaryByEmissionTypeRow) updateFn) =>
      yearlyEmission[index] = updateFn(yearlyEmission[index]);

  List<EmissionMontlyAvgSummaryRow> avgMonthlyEmission = [];
  void addToAvgMonthlyEmission(EmissionMontlyAvgSummaryRow item) =>
      avgMonthlyEmission.add(item);
  void removeFromAvgMonthlyEmission(EmissionMontlyAvgSummaryRow item) =>
      avgMonthlyEmission.remove(item);
  void removeAtIndexFromAvgMonthlyEmission(int index) =>
      avgMonthlyEmission.removeAt(index);
  void insertAtIndexInAvgMonthlyEmission(
          int index, EmissionMontlyAvgSummaryRow item) =>
      avgMonthlyEmission.insert(index, item);
  void updateAvgMonthlyEmissionAtIndex(
          int index, Function(EmissionMontlyAvgSummaryRow) updateFn) =>
      avgMonthlyEmission[index] = updateFn(avgMonthlyEmission[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in HomePage widget.
  List<BusinessRow>? bisnis;
  // Stores action output result for [Backend Call - Query Rows] action in HomePage widget.
  List<EmissionAnnualSummaryByEmissionTypeRow>? emissionYearly;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
