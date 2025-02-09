import 'package:supabase_flutter/supabase_flutter.dart';

abstract class SupabaseMethods {
  static const _supabaseUrl = 'https://ahlgctfekuqsykshgnjg.supabase.co';
  static const _supabaseAnonKey =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFobGdjdGZla3Vxc3lrc2hnbmpnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzkxMDYxODcsImV4cCI6MjA1NDY4MjE4N30.AdHgVM4BzJ7Jq_tgcEc9Hh5zJf2Nh1ONBLylLfhDGyQ";

  static bool _isInitialized = false;

  static Future<void> initialize() async {
    if (_isInitialized) return;

    try {
      await Supabase.initialize(
        url: _supabaseUrl,
        anonKey: _supabaseAnonKey,
      );
      _isInitialized = true;
    } catch (e) {
      throw Exception("Failed to initialize Supabase: $e");
    }
  }

  static SupabaseClient get client => Supabase.instance.client;
}
