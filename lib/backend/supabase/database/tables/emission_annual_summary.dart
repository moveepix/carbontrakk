import '../database.dart';

class EmissionAnnualSummaryTable
    extends SupabaseTable<EmissionAnnualSummaryRow> {
  @override
  String get tableName => 'emission_annual_summary';

  @override
  EmissionAnnualSummaryRow createRow(Map<String, dynamic> data) =>
      EmissionAnnualSummaryRow(data);
}

class EmissionAnnualSummaryRow extends SupabaseDataRow {
  EmissionAnnualSummaryRow(super.data);

  @override
  SupabaseTable get table => EmissionAnnualSummaryTable();

  double? get totalEmission => getField<double>('total_emission');
  set totalEmission(double? value) => setField<double>('total_emission', value);

  String? get year => getField<String>('year');
  set year(String? value) => setField<String>('year', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
