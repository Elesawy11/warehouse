import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:warehouse_app/constant_key.dart';

class SupabaseMethods {
  SupabaseMethods._();
  static const _supabaseUrl = supabaseUrl;
  static const _supabaseAnonKey = supabaseAnonKey;

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

  static SupabaseClient get client {
    if (!_isInitialized) {
      throw Exception("Supabase is not initialized. Call initialize() first.");
    }
    return Supabase.instance.client;
  }
}
