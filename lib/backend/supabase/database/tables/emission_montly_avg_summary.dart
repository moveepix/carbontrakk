import '../database.dart';

class EmissionMontlyAvgSummaryTable
    extends SupabaseTable<EmissionMontlyAvgSummaryRow> {
  @override
  String get tableName => 'emission_montly_avg_summary';

  @override
  EmissionMontlyAvgSummaryRow createRow(Map<String, dynamic> data) =>
      EmissionMontlyAvgSummaryRow(data);
}

class EmissionMontlyAvgSummaryRow extends SupabaseDataRow {
  EmissionMontlyAvgSummaryRow(super.data);

  @override
  SupabaseTable get table => EmissionMontlyAvgSummaryTable();

  double? get avgEmission => getField<double>('avg_emission');
  set avgEmission(double? value) => setField<double>('avg_emission', value);

  String? get year => getField<String>('year');
  set year(String? value) => setField<String>('year', value);

  String? get monthIdn => getField<String>('month_idn');
  set monthIdn(String? value) => setField<String>('month_idn', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
