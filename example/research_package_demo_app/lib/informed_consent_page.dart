import 'package:flutter/material.dart';
import 'package:research_package/research_package.dart';
import 'research_package_objects/infomed_consent_objects.dart';
import 'dart:convert';

class InformedConsentPage extends StatelessWidget {
  String _encode(Object object) => const JsonEncoder.withIndent(' ').convert(object);

  void resultCallback(RPTaskResult result) {
    // Do anything with the result
    print(_encode(result));
  }

  @override
  Widget build(BuildContext context) {
    return RPUIOrderedTask(
      task: consentTask,
      onSubmit: (result) {
        resultCallback(result);
      },
    );
  }
}
