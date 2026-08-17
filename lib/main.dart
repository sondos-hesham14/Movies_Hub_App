import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubits/home/home_cubit.dart';
import 'screens/splash_screen.dart';
import 'cubits/profile/profile_cubit.dart';
import 'cubits/watchlist/watchlist_cubit.dart';
// import 'screens/main_layout_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(
          create: (context) => HomeCubit(),
        ),
        BlocProvider<ProfileCubit>(
          create: (context) => ProfileCubit()..fetchProfileData(),
        ),
        BlocProvider<WatchlistCubit>(
          create: (context) => WatchlistCubit()..fetchWatchlist(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const SplashScreen(),
      ),
    );
  }
}