import 'package:delivereats_app/model/food.dart';
abstract class Appstate{}
class InitialState extends Appstate {}
class LoadedState extends Appstate{
  final List<Food> x;
  LoadedState({required this.x});

  get listfood => null;
}
class LoadeingState extends Appstate{}
class ErorrState extends Appstate{
  final String errormassge;
  ErorrState({required this.errormassge});
}
