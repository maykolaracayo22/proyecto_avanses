import 'package:asistencia_upeu/local/db/database.dart';
mixin ConexionDBL{
  Future<AppDatabase> conetion() async{
    return await $FloorAppDatabase.databaseBuilder('asistenciax_upeu.db').build();
  }
}
