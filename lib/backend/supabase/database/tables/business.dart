import '../database.dart';

class BusinessTable extends SupabaseTable<BusinessRow> {
  @override
  String get tableName => 'business';

  @override
  BusinessRow createRow(Map<String, dynamic> data) => BusinessRow(data);
}

class BusinessRow extends SupabaseDataRow {
  BusinessRow(super.data);

  @override
  SupabaseTable get table => BusinessTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get businessName => getField<String>('business_name');
  set businessName(String? value) => setField<String>('business_name', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  int? get totalEmployee => getField<int>('total_employee');
  set totalEmployee(int? value) => setField<int>('total_employee', value);

  int? get industryId => getField<int>('industry_id');
  set industryId(int? value) => setField<int>('industry_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
