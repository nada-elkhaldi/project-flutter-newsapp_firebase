import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/bloc/news_bloc.dart';


import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:newsapp/authentication/auth_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Assure l'initialisation correcte des widgets
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyD8sjmyNDRSSv3RVrSIeiu1Zo3gcgOram4',
      appId: '1:360753296730:android:a9637883ca4f57d47b6f63',
      messagingSenderId: '360753296730', // Project number
      projectId: 'newsappproject-33877',
    ),
  );
  runApp( const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NewsBloc>(create: (BuildContext context) => NewsBloc(),),
      ],
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
         home: const AuthScreen(),
      ),
    );
  }
}

const spinkit = SpinKitChasingDots(
  color: Colors.blue,
  size: 40.0,
);



