import '../database.dart';

class EmissionFactorTypeTable extends SupabaseTable<EmissionFactorTypeRow> {
  @override
  String get tableName => 'emission_factor_type';

  @override
  EmissionFactorTypeRow createRow(Map<String, dynamic> data) =>
      EmissionFactorTypeRow(data);
}

class EmissionFactorTypeRow extends SupabaseDataRow {
  EmissionFactorTypeRow(super.data);

  @override
  SupabaseTable get table => EmissionFactorTypeTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get efType => getField<String>('ef_type')!;
  set efType(String value) => setField<String>('ef_type', value);
}
