import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'employee_communting_list_widget.dart' show EmployeeCommuntingListWidget;
import 'package:flutter/material.dart';

class EmployeeCommuntingListModel
    extends FlutterFlowModel<EmployeeCommuntingListWidget> {
  ///  Local state fields for this page.

  List<EmissionRow> employeeemissionlist = [];
  void addToEmployeeemissionlist(EmissionRow item) =>
      employeeemissionlist.add(item);
  void removeFromEmployeeemissionlist(EmissionRow item) =>
      employeeemissionlist.remove(item);
  void removeAtIndexFromEmployeeemissionlist(int index) =>
      employeeemissionlist.removeAt(index);
  void insertAtIndexInEmployeeemissionlist(int index, EmissionRow item) =>
      employeeemissionlist.insert(index, item);
  void updateEmployeeemissionlistAtIndex(
          int index, Function(EmissionRow) updateFn) =>
      employeeemissionlist[index] = updateFn(employeeemissionlist[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in EmployeeCommuntingList widget.
  List<EmissionRow>? employeecommutingList;
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
