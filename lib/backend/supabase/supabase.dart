import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://vfmcgxjwiizwyhwaeyyb.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZmbWNneGp3aWl6d3lod2FleXliIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjE3MTM4NTEsImV4cCI6MjAzNzI4OTg1MX0.rNcZ80FzveB4bUPI3v-I-ElgaNlO6IJpytcVb2yR51g';

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
