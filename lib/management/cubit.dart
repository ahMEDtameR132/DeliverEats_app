import 'package:delivereats_app/Network/api_servis.dart';
import 'package:delivereats_app/management/state.dart';
import 'package:delivereats_app/model/food.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Appcubite extends Cubit<Appstate>{
  ApiServis apiServis = ApiServis();
  Appcubite():super(InitialState());
  getfoods()async{
    emit(LoadeingState());
  try {
  var data = await  apiServis.getData(url: "api/json/v1/1/categories.php");
  List<Food> foods = [];
  for(var i in data["categories"]){
    foods.add(Food(strCategory: i["strCategory"], strCategoryThumb: i["strCategoryThumb"], idCategory: i["idCategory"]));
  }
  emit(LoadedState(x: foods));
}  catch (Erorr) {
  emit(ErorrState(errormassge: Erorr.toString()));
  // TODO
}
  }
}