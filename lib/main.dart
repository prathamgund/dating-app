import 'package:dating_app/app.dart';
import 'package:dating_app/firebase_options.dart';
import 'package:dating_app/simple_bloc_observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';

void main() async {
	WidgetsFlutterBinding.ensureInitialized();
	await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
	Bloc.observer = SimpleBlocObserver();
  runApp(MyApp(FirebaseUserRepo()));
}
