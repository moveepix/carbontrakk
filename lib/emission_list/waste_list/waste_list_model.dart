import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'waste_list_widget.dart' show WasteListWidget;
import 'package:flutter/material.dart';

class WasteListModel extends FlutterFlowModel<WasteListWidget> {
  ///  Local state fields for this page.

  List<EmissionRow> wasteemissionlist = [];
  void addToWasteemissionlist(EmissionRow item) => wasteemissionlist.add(item);
  void removeFromWasteemissionlist(EmissionRow item) =>
      wasteemissionlist.remove(item);
  void removeAtIndexFromWasteemissionlist(int index) =>
      wasteemissionlist.removeAt(index);
  void insertAtIndexInWasteemissionlist(int index, EmissionRow item) =>
      wasteemissionlist.insert(index, item);
  void updateWasteemissionlistAtIndex(
          int index, Function(EmissionRow) updateFn) =>
      wasteemissionlist[index] = updateFn(wasteemissionlist[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in WasteList widget.
  List<EmissionRow>? wasteList;
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
