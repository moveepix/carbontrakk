import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'business_detail_widget.dart' show BusinessDetailWidget;
import 'package:flutter/material.dart';

class BusinessDetailModel extends FlutterFlowModel<BusinessDetailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for BusinessName widget.
  FocusNode? businessNameFocusNode;
  TextEditingController? businessNameTextController;
  String? Function(BuildContext, String?)? businessNameTextControllerValidator;
  // State field(s) for BusinessCity widget.
  FocusNode? businessCityFocusNode;
  TextEditingController? businessCityTextController;
  String? Function(BuildContext, String?)? businessCityTextControllerValidator;
  // State field(s) for BusinessIndustryDropdown widget.
  int? businessIndustryDropdownValue;
  FormFieldController<int>? businessIndustryDropdownValueController;
  // State field(s) for BusinessTotalEmployee widget.
  int? businessTotalEmployeeValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    businessNameFocusNode?.dispose();
    businessNameTextController?.dispose();

    businessCityFocusNode?.dispose();
    businessCityTextController?.dispose();
  }
}
