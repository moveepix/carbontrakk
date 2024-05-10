import '/flutter_flow/flutter_flow_util.dart';
import 'emission_list_widget.dart' show EmissionListWidget;
import 'package:flutter/material.dart';

class EmissionListModel extends FlutterFlowModel<EmissionListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
