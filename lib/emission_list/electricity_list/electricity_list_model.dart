import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'electricity_list_widget.dart' show ElectricityListWidget;
import 'package:flutter/material.dart';

class ElectricityListModel extends FlutterFlowModel<ElectricityListWidget> {
  ///  Local state fields for this page.

  List<EmissionRow> electricityemission = [];
  void addToElectricityemission(EmissionRow item) =>
      electricityemission.add(item);
  void removeFromElectricityemission(EmissionRow item) =>
      electricityemission.remove(item);
  void removeAtIndexFromElectricityemission(int index) =>
      electricityemission.removeAt(index);
  void insertAtIndexInElectricityemission(int index, EmissionRow item) =>
      electricityemission.insert(index, item);
  void updateElectricityemissionAtIndex(
          int index, Function(EmissionRow) updateFn) =>
      electricityemission[index] = updateFn(electricityemission[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in ElectricityList widget.
  List<EmissionRow>? electricityList;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<EmissionRow>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
