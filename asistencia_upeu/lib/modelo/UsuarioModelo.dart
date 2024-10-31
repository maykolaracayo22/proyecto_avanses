
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class UsuarioModelo {
  late final String nombres;
  late final String apellidos;
  late final String correo;
  late final String password;
  late final String token;
  late final String dni;
  late final String perfilPrin;
  late final String estado;
  late final String offlinex;

  UsuarioModelo({
    required this.nombres,
    required this.apellidos,
    required this.correo,
    required this.password,
    required this.token,
    required this.dni,
    required this.perfilPrin,
    required this.estado,
    required this.offlinex,
  });

  UsuarioModelo.login(this.correo, this.password):nombres="", apellidos="",token="",dni="", perfilPrin="",estado="", offlinex="";
  UsuarioModelo.loginDos(this.correo, this.password):nombres="", apellidos="";



  factory UsuarioModelo.fromJson(Map<String, dynamic> json){
    return UsuarioModelo(
      nombres : json['nombres'],
      apellidos : json['apellidos'],
      correo : json['correo'],
      password : json['password'],
      token : json['token'],
      dni : json['dni'],
      perfilPrin : json['perfilPrin'],
      estado : json['estado'],
      offlinex : json['offlinex'],
    );
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['nombres'] = nombres;
    _data['apellidos'] = apellidos;
    _data['correo'] = correo;
    _data['password'] = password;
    _data['token'] = token;
    _data['dni'] = dni;
    _data['perfilPrin'] = perfilPrin;
    _data['estado'] = estado;
    _data['offlinex'] = offlinex;
    return _data;
  }
}

class RespUsuarioModelo {
  RespUsuarioModelo({
    required this.id,
    required this.nombres,
    required this.apellidos,
    required this.correo,
    required this.token,
    required this.dni,
    required this.perfilPrin,
    required this.estado,
    required this.offlinex,
  });
  late final int id;
  late final String nombres;
  late final String apellidos;
  late final String correo;
  late final String token;
  late final String dni;
  late final String perfilPrin;
  late final String estado;
  late final String offlinex;

  factory RespUsuarioModelo.fromJson(Map<String, dynamic> json){
  return RespUsuarioModelo(
      id : json['id'],
      nombres : json['nombres'],
      apellidos : json['apellidos'],
      correo : json['correo'],
      token : json['token'],
      dni : json['dni'],
      perfilPrin : json['perfilPrin'],
      estado : json['estado'],
      offlinex : json['offlinex'],
  );
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['nombres'] = nombres;
    _data['apellidos'] = apellidos;
    _data['correo'] = correo;
    _data['token'] = token;
    _data['dni'] = dni;
    _data['perfilPrin'] = perfilPrin;
    _data['estado'] = estado;
    _data['offlinex'] = offlinex;
    return _data;
  }
}