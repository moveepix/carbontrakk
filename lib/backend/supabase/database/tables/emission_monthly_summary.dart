import '../database.dart';

class EmissionMonthlySummaryTable
    extends SupabaseTable<EmissionMonthlySummaryRow> {
  @override
  String get tableName => 'emission_monthly_summary';

  @override
  EmissionMonthlySummaryRow createRow(Map<String, dynamic> data) =>
      EmissionMonthlySummaryRow(data);
}

class EmissionMonthlySummaryRow extends SupabaseDataRow {
  EmissionMonthlySummaryRow(super.data);

  @override
  SupabaseTable get table => EmissionMonthlySummaryTable();

  double? get totalEmission => getField<double>('total_emission');
  set totalEmission(double? value) => setField<double>('total_emission', value);

  String? get monthIdn => getField<String>('month_idn');
  set monthIdn(String? value) => setField<String>('month_idn', value);

  String? get year => getField<String>('year');
  set year(String? value) => setField<String>('year', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
