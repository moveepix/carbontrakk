import '../database.dart';

class EmissionAnnualAvgSummaryTable
    extends SupabaseTable<EmissionAnnualAvgSummaryRow> {
  @override
  String get tableName => 'emission_annual_avg_summary';

  @override
  EmissionAnnualAvgSummaryRow createRow(Map<String, dynamic> data) =>
      EmissionAnnualAvgSummaryRow(data);
}

class EmissionAnnualAvgSummaryRow extends SupabaseDataRow {
  EmissionAnnualAvgSummaryRow(super.data);

  @override
  SupabaseTable get table => EmissionAnnualAvgSummaryTable();

  double? get avgEmission => getField<double>('avg_emission');
  set avgEmission(double? value) => setField<double>('avg_emission', value);

  String? get year => getField<String>('year');
  set year(String? value) => setField<String>('year', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
