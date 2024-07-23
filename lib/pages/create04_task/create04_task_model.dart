import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create04_task_widget.dart' show Create04TaskWidget;
import 'package:flutter/material.dart';

class Create04TaskModel extends FlutterFlowModel<Create04TaskWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for task widget.
  FocusNode? taskFocusNode;
  TextEditingController? taskTextController;
  String? Function(BuildContext, String?)? taskTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  DateTime? datePicked;
  // State field(s) for Assignto widget.
  FocusNode? assigntoFocusNode;
  TextEditingController? assigntoTextController;
  String? Function(BuildContext, String?)? assigntoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    taskFocusNode?.dispose();
    taskTextController?.dispose();

    assigntoFocusNode?.dispose();
    assigntoTextController?.dispose();
  }
}
