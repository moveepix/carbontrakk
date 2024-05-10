import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'water_list_widget.dart' show WaterListWidget;
import 'package:flutter/material.dart';

class WaterListModel extends FlutterFlowModel<WaterListWidget> {
  ///  Local state fields for this page.

  List<EmissionRow> wateremissionlist = [];
  void addToWateremissionlist(EmissionRow item) => wateremissionlist.add(item);
  void removeFromWateremissionlist(EmissionRow item) =>
      wateremissionlist.remove(item);
  void removeAtIndexFromWateremissionlist(int index) =>
      wateremissionlist.removeAt(index);
  void insertAtIndexInWateremissionlist(int index, EmissionRow item) =>
      wateremissionlist.insert(index, item);
  void updateWateremissionlistAtIndex(
          int index, Function(EmissionRow) updateFn) =>
      wateremissionlist[index] = updateFn(wateremissionlist[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in WaterList widget.
  List<EmissionRow>? waterList;
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
