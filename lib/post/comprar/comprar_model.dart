import '/flutter_flow/flutter_flow_util.dart';
import 'comprar_widget.dart' show ComprarWidget;
import 'package:flutter/material.dart';

class ComprarModel extends FlutterFlowModel<ComprarWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
