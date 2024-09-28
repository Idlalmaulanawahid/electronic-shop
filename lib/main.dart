import 'package:cofee_shop/bloc/navigation_bloc.dart';
import 'package:cofee_shop/common/app-theme.dart';
import 'package:cofee_shop/main_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => NavigationBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        home: MainMenu(),
      ),
    );
  }
}
