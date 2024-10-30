import 'package:asistencia_upeu/apis/actividad_api.dart';
import 'package:asistencia_upeu/modelo/ActividadModelo.dart';
import 'package:asistencia_upeu/modelo/GenericModelo.dart';
import 'package:asistencia_upeu/util/TokenUtil.dart';
import 'package:dio/dio.dart';

class Actividadrepository{
  ActividadApi? actividadApi;
  Actividadrepository(){
    Dio _dio=Dio();
    _dio.options.headers["content-Type"]="application/json";
    actividadApi=ActividadApi(_dio);
  }

  Future<List<ActividadModelo>> getActividad() async{
    return await actividadApi!.getActividad(TokenUtil.TOKEN).then((value)=>value);

  }
  Future<GenericModelo> deleteActividad(int id) async{
    return await actividadApi!.deleteActividad(TokenUtil.TOKEN, id);
  }
  Future<ActividadModelo> updateActividad(int id, ActividadModelo actividad) async{
    return await actividadApi!.updateActividad(TokenUtil.TOKEN, id, actividad);
  }

  Future<ActividadModelo> createActividad (ActividadModelo actividad) async{
    return await actividadApi!.crearActividad (TokenUtil. TOKEN, actividad);
  }

}