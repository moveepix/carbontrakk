import '../database.dart';

class EmissionAnnualSummaryByEmissionTypeTable
    extends SupabaseTable<EmissionAnnualSummaryByEmissionTypeRow> {
  @override
  String get tableName => 'emission_annual_summary_by_emission_type';

  @override
  EmissionAnnualSummaryByEmissionTypeRow createRow(Map<String, dynamic> data) =>
      EmissionAnnualSummaryByEmissionTypeRow(data);
}

class EmissionAnnualSummaryByEmissionTypeRow extends SupabaseDataRow {
  EmissionAnnualSummaryByEmissionTypeRow(super.data);

  @override
  SupabaseTable get table => EmissionAnnualSummaryByEmissionTypeTable();

  double? get sumEmission => getField<double>('sum_emission');
  set sumEmission(double? value) => setField<double>('sum_emission', value);

  String? get year => getField<String>('year');
  set year(String? value) => setField<String>('year', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get emissionType => getField<String>('emission_type');
  set emissionType(String? value) => setField<String>('emission_type', value);
}
