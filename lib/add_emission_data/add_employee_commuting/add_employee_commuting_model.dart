import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_employee_commuting_widget.dart' show AddEmployeeCommutingWidget;
import 'package:flutter/material.dart';

class AddEmployeeCommutingModel
    extends FlutterFlowModel<AddEmployeeCommutingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for Activity widget.
  FocusNode? activityFocusNode;
  TextEditingController? activityTextController;
  String? Function(BuildContext, String?)? activityTextControllerValidator;
  String? _activityTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for DropDownEF widget.
  double? dropDownEFValue;
  FormFieldController<double>? dropDownEFValueController;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for DropDownYear widget.
  String? dropDownYearValue;
  FormFieldController<String>? dropDownYearValueController;
  // State field(s) for DropDownMonth widget.
  String? dropDownMonthValue;
  FormFieldController<String>? dropDownMonthValueController;
  // State field(s) for Consumption widget.
  FocusNode? consumptionFocusNode;
  TextEditingController? consumptionTextController;
  String? Function(BuildContext, String?)? consumptionTextControllerValidator;
  String? _consumptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.isEmpty) {
      return '1';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Query Rows] action in Consumption widget.
  List<EmissionFactorRow>? efValue;
  // Stores action output result for [Custom Action - emissionEmployeeCalculation] action in Consumption widget.
  double? emission;

  @override
  void initState(BuildContext context) {
    activityTextControllerValidator = _activityTextControllerValidator;
    consumptionTextControllerValidator = _consumptionTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    activityFocusNode?.dispose();
    activityTextController?.dispose();

    consumptionFocusNode?.dispose();
    consumptionTextController?.dispose();
  }
}
