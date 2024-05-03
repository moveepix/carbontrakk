import '../database.dart';

class EmissionFactorTable extends SupabaseTable<EmissionFactorRow> {
  @override
  String get tableName => 'emission_factor';

  @override
  EmissionFactorRow createRow(Map<String, dynamic> data) =>
      EmissionFactorRow(data);
}

class EmissionFactorRow extends SupabaseDataRow {
  EmissionFactorRow(super.data);

  @override
  SupabaseTable get table => EmissionFactorTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get efName => getField<String>('ef_name')!;
  set efName(String value) => setField<String>('ef_name', value);

  double get efValue => getField<double>('ef_value')!;
  set efValue(double value) => setField<double>('ef_value', value);

  String? get efSource => getField<String>('ef_source');
  set efSource(String? value) => setField<String>('ef_source', value);

  int get efTypeId => getField<int>('ef_type_id')!;
  set efTypeId(int value) => setField<int>('ef_type_id', value);

  String? get efValueUnit => getField<String>('ef_value_unit');
  set efValueUnit(String? value) => setField<String>('ef_value_unit', value);

  String get efGas => getField<String>('ef_gas')!;
  set efGas(String value) => setField<String>('ef_gas', value);
}
