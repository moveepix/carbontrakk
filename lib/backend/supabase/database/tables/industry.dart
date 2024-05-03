import '../database.dart';

class IndustryTable extends SupabaseTable<IndustryRow> {
  @override
  String get tableName => 'industry';

  @override
  IndustryRow createRow(Map<String, dynamic> data) => IndustryRow(data);
}

class IndustryRow extends SupabaseDataRow {
  IndustryRow(super.data);

  @override
  SupabaseTable get table => IndustryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get industryNameIdn => getField<String>('industry_name_idn');
  set industryNameIdn(String? value) =>
      setField<String>('industry_name_idn', value);
}
