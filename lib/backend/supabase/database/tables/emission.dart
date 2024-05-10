import '../database.dart';

class EmissionTable extends SupabaseTable<EmissionRow> {
  @override
  String get tableName => 'emission';

  @override
  EmissionRow createRow(Map<String, dynamic> data) => EmissionRow(data);
}

class EmissionRow extends SupabaseDataRow {
  EmissionRow(super.data);

  @override
  SupabaseTable get table => EmissionTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get activityName => getField<String>('activity_name')!;
  set activityName(String value) => setField<String>('activity_name', value);

  double get consumption => getField<double>('consumption')!;
  set consumption(double value) => setField<double>('consumption', value);

  String get consumptionUnit => getField<String>('consumption_unit')!;
  set consumptionUnit(String value) =>
      setField<String>('consumption_unit', value);

  double get emissionValue => getField<double>('emission_value')!;
  set emissionValue(double value) => setField<double>('emission_value', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String get monthIdn => getField<String>('month_idn')!;
  set monthIdn(String value) => setField<String>('month_idn', value);

  String get year => getField<String>('year')!;
  set year(String value) => setField<String>('year', value);

  int? get efId => getField<int>('ef_id');
  set efId(int? value) => setField<int>('ef_id', value);

  String get emissionType => getField<String>('emission_type')!;
  set emissionType(String value) => setField<String>('emission_type', value);
}
