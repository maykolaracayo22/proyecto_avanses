

import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class ActividadModelo {

  late  int id=0;
  late final String nombreActividad;
  late final String fecha;
  late final String horai;
  late final String minToler;
  late final String latitud;
  late final String longitud;
  late final String estado;
  late final String evaluar;
  late final String userCreate;
  late final String mater;
  late final String validInsc;
  late final String asisSubact;
  late final String entsal;
  late final String offlinex;
  late List<AsistenciaxRModelo> asistenciaxs=[];

  ActividadModelo({
    required this.id,
    required this.nombreActividad,
    required this.fecha,
    required this.horai,
    required this.minToler,
    required this.latitud,
    required this.longitud,
    required this.estado,
    required this.evaluar,
    required this.userCreate,
    required this.mater,
    required this.validInsc,
    required this.asisSubact,
    required this.entsal,
    required this.offlinex,
  });

  ActividadModelo.unlaunched();



  ActividadModelo.fromJson(Map<String, dynamic> json){
    id = json['id'];
    nombreActividad = json['nombreActividad'];
    fecha = json['fecha'];
    horai = json['horai'];
    minToler = json['minToler'];
    latitud = json['latitud'];
    longitud = json['longitud'];
    estado = json['estado'];
    evaluar = json['evaluar'];
    userCreate = json['userCreate'];
    mater = json['mater'];
    validInsc = json['validInsc'];
    asisSubact = json['asisSubact'];
    entsal = json['entsal'];
    offlinex = json['offlinex'];
    if (json['asistenciaxs'] != null) {
      asistenciaxs = (json['asistenciaxs'] as List).map((e) =>
          AsistenciaxRModelo.fromJson(e as Map<String, dynamic>)).toList();
    }else{ asistenciaxs=[]; }
  }

  factory ActividadModelo.fromJsonModelo(Map<String, dynamic> json){
   return ActividadModelo(
       id : json['id'],
       nombreActividad : json['nombreActividad'],
       fecha : json['fecha'],
       horai : json['horai'],
       minToler : json['minToler'],
       latitud : json['latitud'],
       longitud : json['longitud'],
       estado : json['estado'],
       evaluar : json['evaluar'],
       userCreate : json['userCreate'],
       mater : json['mater'],
       validInsc : json['validInsc'],
       asisSubact : json['asisSubact'],
       entsal : json['entsal'],
       offlinex : json['offlinex']
   );
  }

  ActividadModelo.fromJsonLocal(Map<String,
      dynamic> json) {
    id = json['id'];
    nombreActividad = json['nombre_actividad'];
    fecha = json['fecha'];
    horai = json['horai'];
    minToler = json['min_toler'];
    latitud = json['latitud'];
    longitud = json['longitud'];
    estado = json['estado'];
    evaluar = json['evaluar'];
    userCreate = json['user_create'];
    mater = json['mater'];
    validInsc = json['valid_insc'];
    asisSubact = json['asis_subact'];
    entsal = json['entsal'];
    offlinex = json['offlinex'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['nombreActividad'] = nombreActividad;
    _data['fecha'] = fecha;
    _data['horai'] = horai;
    _data['minToler'] = minToler;
    _data['latitud'] = latitud;
    _data['longitud'] = longitud;
    _data['estado'] = estado;
    _data['evaluar'] = evaluar;
    _data['userCreate'] = userCreate;
    _data['mater'] = mater;
    _data['validInsc'] = validInsc;
    _data['asisSubact'] = asisSubact;
    _data['entsal'] = entsal;
    _data['offlinex'] = offlinex;
    if (this.asistenciaxs != null) {
      _data['asistenciaxs'] = this.asistenciaxs.map((v) => v.toJson()).toList();
    }
    return _data;
  }
}

class AsistenciaxRModelo {
  late int id=0;
  late final DateTime fecha;
  late final String horaReg;
  late final String latituda;
  late final String longituda;
  late final String tipo;
  late final int calificacion;
  late final String cui;
  late final String tipoCui;
  late final String entsal;
  late final int subactasisId;
  late final String offlinex;

  AsistenciaxRModelo({
    required this.id,
    required this.fecha,
    required this.horaReg,
    required this.latituda,
    required this.longituda,
    required this.tipo,
    required this.calificacion,
    required this.cui,
    required this.tipoCui,
    required this.entsal,
    required this.subactasisId,
    required this.offlinex,
  });

  factory AsistenciaxRModelo.fromJson(Map<String, dynamic> json){
    return AsistenciaxRModelo(
      id: json["id"],
      fecha: DateTime.parse(json["fecha"]),
      horaReg: json["horaReg"],
      latituda: json["latituda"],
      longituda: json["longituda"],
      tipo: json["tipo"],
      calificacion: json["calificacion"],
      cui: json["cui"],
      tipoCui: json["tipoCui"],
      entsal: json["entsal"],
      subactasisId: json["subactasisId"],
      offlinex: json["offlinex"],
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    //final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['fecha'] = this.fecha;
    data['horaReg'] = this.horaReg;
    data['latituda'] = this.latituda;
    data['longituda'] = this.longituda;
    data['tipo'] = this.tipo;
    data['calificacion'] = this.calificacion;
    data['cui'] = this.cui;
    data['tipoCui'] = this.tipoCui;
    data['entsal'] = this.entsal;
    data['subactasisId'] = this.subactasisId;
    data['offlinex'] = this.offlinex;
    return data;
  }


}