import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'vehicle_list_widget.dart' show VehicleListWidget;
import 'package:flutter/material.dart';

class VehicleListModel extends FlutterFlowModel<VehicleListWidget> {
  ///  Local state fields for this page.

  List<EmissionRow> vehicleemissionlist = [];
  void addToVehicleemissionlist(EmissionRow item) =>
      vehicleemissionlist.add(item);
  void removeFromVehicleemissionlist(EmissionRow item) =>
      vehicleemissionlist.remove(item);
  void removeAtIndexFromVehicleemissionlist(int index) =>
      vehicleemissionlist.removeAt(index);
  void insertAtIndexInVehicleemissionlist(int index, EmissionRow item) =>
      vehicleemissionlist.insert(index, item);
  void updateVehicleemissionlistAtIndex(
          int index, Function(EmissionRow) updateFn) =>
      vehicleemissionlist[index] = updateFn(vehicleemissionlist[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in VehicleList widget.
  List<EmissionRow>? vehicleList;
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
