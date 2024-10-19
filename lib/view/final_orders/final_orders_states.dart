import 'package:rct/view/RealEstate/modelget.dart';

abstract class FinalOrdersStates {}

class InitialFinalOrderStates extends FinalOrdersStates {}

class RealEstateOrdersSuccess extends FinalOrdersStates {
  final List<Modelget> data;

  RealEstateOrdersSuccess(this.data);
}

class RealEstateOrdersLoading extends FinalOrdersStates {}

class RealEstateOrdersFaild extends FinalOrdersStates {
  late String message;
  RealEstateOrdersFaild(this.message);
}

class CoopertionSuccess extends FinalOrdersStates {
  final List<Modelget> data;

  CoopertionSuccess(this.data);
}

class CooperationFaild extends FinalOrdersStates {
  late String message;
  CooperationFaild(this.message);
}

class CooperationLoading extends FinalOrdersStates {}

class RawLandOrdersSuccess extends FinalOrdersStates {
  final List<Modelget> data;

  RawLandOrdersSuccess(this.data);
}

class RawLandOrdersLoading extends FinalOrdersStates {}

class RawLandOrdersFaild extends FinalOrdersStates {
  late String message;
  RawLandOrdersFaild(this.message);
}

class DesignsSuccess extends FinalOrdersStates {
  final List<Modelget> data;

  DesignsSuccess(this.data);
}

class DesignsFaild extends FinalOrdersStates {
  late String message;
  DesignsFaild(this.message);
}

class DesignsLoading extends FinalOrdersStates {}

class SketchSuccess22 extends FinalOrdersStates {
  final List<Modelget> data;

  SketchSuccess22(this.data);
}

class SketchFaild22 extends FinalOrdersStates {
  late String message;
  SketchFaild22(this.message);
}

class SketchLoading22 extends FinalOrdersStates {}

class SchemasSuccess extends FinalOrdersStates {
  final List<Modelget> data;

  SchemasSuccess(this.data);
}

class SchemaFaild extends FinalOrdersStates {
  late String message;
  SchemaFaild(this.message);
}

class SchemaLoading extends FinalOrdersStates {}

class UserSucess extends FinalOrdersStates {
  final List<Modelget> users; // or any other type you're using

  UserSucess(this.users);
}

class UserFaild extends FinalOrdersStates {
  String message;
  UserFaild(this.message);
}

class UserLoading extends FinalOrdersStates {}
