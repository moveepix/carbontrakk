import '/flutter_flow/flutter_flow_util.dart';
import 'fuel_consumption_list_widget.dart' show FuelConsumptionListWidget;
import 'package:flutter/material.dart';

class FuelConsumptionListModel
    extends FlutterFlowModel<FuelConsumptionListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
