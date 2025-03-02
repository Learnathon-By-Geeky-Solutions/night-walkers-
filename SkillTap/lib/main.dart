import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skilltap/app.dart';
import 'package:skilltap/firebase_options.dart';

// Main entry point of the application
Future<void> main() async {
  // Initialize Flutter bindings - required for Firebase and platform channels
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase with platform-specific configurations
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Run the app wrapped in ProviderScope for Riverpod state management
  runApp(
    const ProviderScope(
      child: SkillTap(),
    ),
  );
}