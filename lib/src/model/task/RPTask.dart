part of research_package_model;

/*
  This is an abstract class (interface/protocol) for Task.

  Task is the "parent" object which contains [Step] and basically everything is a Step. (e.g. Instruction, Question)

 */

abstract class RPTask {
  final String _identifier;

  RPTask(this._identifier);

  String get identifier => _identifier;

  RPStep getStepAfterStep(RPStep step, RPTaskResult result);
  RPStep getStepBeforeStep(RPStep step, RPTaskResult result);
  RPStep getStepWithIdentifier(String identifier);
  RPTaskProgress getProgressOfCurrentStep(RPStep step, RPTaskResult result);
  String getTitleForStep(RPStep step);

  //TODO: Validates the task parameters.
}

//TODO: Access level of this class
class RPTaskProgress {
  int _current;
  int _total;

  RPTaskProgress(this._current, this._total);

  get current => _current;
  get total => _total;
}
