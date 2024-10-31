import 'package:asistencia_upeu/modelo/ActividadModelo.dart';
import 'package:asistencia_upeu/modelo/GenericModelo.dart';
import 'package:asistencia_upeu/modelo/UsuarioModelo.dart';
import 'package:asistencia_upeu/util/UrlApi.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'actividad_api.g.dart';

@RestApi(baseUrl: UrlApi.urlApix)
abstract class ActividadApi{
  factory ActividadApi(Dio dio, {String baseUrl})=_ActividadApi;

  static ActividadApi create(){
    final dio=Dio();
    dio.interceptors.add(PrettyDioLogger());
    return ActividadApi(dio);
  }

  @GET("/asis/actividad/list")
  Future<List<ActividadModelo>> getActividad(@Header("Authorization") String token);
  
  @POST("/asis/actividad/crear")
  Future<ActividadModelo> crearActividad(@Header("Authorization") String token, @Body() ActividadModelo actividad);

  @GET("/asis/actividad/buscar/{id}")
  Future<ActividadModelo> findActivdad(@Header("Authorization") String token, @Path("id") int id);
  
  @DELETE("/asis/actividad/eliminar/{id}")
  Future<GenericModelo> deleteActividad(@Header("Authorization") String token, @Path("id") int id );
  
  @PUT("/asis/actividad/editar/{id}")
  Future<ActividadModelo> updateActividad(@Header("Authorization") String token, @Path("id") int id, @Body() ActividadModelo actividad);



}