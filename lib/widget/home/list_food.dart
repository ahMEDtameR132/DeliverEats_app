import 'package:delivereats_app/management/cubit.dart';
import 'package:delivereats_app/management/state.dart';
import 'package:delivereats_app/model/food.dart';
import 'package:delivereats_app/widget/home/listfood.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListFood extends StatefulWidget {
  const ListFood({super.key});

  @override
  State<ListFood> createState() => _ListFoodState();
}

class _ListFoodState extends State<ListFood> {
  List <Food>? x ;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Appcubite,Appstate>(builder: (context,state){
      if (state is LoadedState){
        return SliverList.builder(itemBuilder: (context,index){
            return Listfood(food: state.x[index],);
          },itemCount:x!.length ,);
      }
      else if(state is ErrorState){
        return SliverToBoxAdapter(child: Text("Erorr ${state.errormassge}"));
      }
      else{
        return SliverToBoxAdapter(child: Center(child: CircularProgressIndicator(),));
      }

    });
  }
}