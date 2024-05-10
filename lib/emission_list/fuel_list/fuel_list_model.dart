import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'fuel_list_widget.dart' show FuelListWidget;
import 'package:flutter/material.dart';

class FuelListModel extends FlutterFlowModel<FuelListWidget> {
  ///  Local state fields for this page.

  List<EmissionRow> fuelemissionlist = [];
  void addToFuelemissionlist(EmissionRow item) => fuelemissionlist.add(item);
  void removeFromFuelemissionlist(EmissionRow item) =>
      fuelemissionlist.remove(item);
  void removeAtIndexFromFuelemissionlist(int index) =>
      fuelemissionlist.removeAt(index);
  void insertAtIndexInFuelemissionlist(int index, EmissionRow item) =>
      fuelemissionlist.insert(index, item);
  void updateFuelemissionlistAtIndex(
          int index, Function(EmissionRow) updateFn) =>
      fuelemissionlist[index] = updateFn(fuelemissionlist[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in FuelList widget.
  List<EmissionRow>? fuelList;
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
