part of 'actividad_bloc.dart';

@immutable
sealed class ActividadState {}

final class ActividadInitialState extends ActividadState {}
class ActividadLoadingState extends ActividadState{}
class ActividadLoadedState extends ActividadState{
  List<ActividadModelo> ActividadList;
  ActividadLoadedState(this.ActividadList);
}
class ActividadError extends ActividadState{
  Error e;
  ActividadError(this.e);
}

