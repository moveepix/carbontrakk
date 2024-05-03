import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://syaqhfoylbbjgzmwvewt.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InN5YXFoZm95bGJiamd6bXd2ZXd0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTQ2MzIzMTYsImV4cCI6MjAzMDIwODMxNn0.AbrYHmypsG4ZMPUHVVXugcDcpgWu3Bk01pju_xZTtZc';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
