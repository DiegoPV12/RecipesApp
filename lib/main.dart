import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/recipes_provider.dart';
import 'views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoritesProvider(),
      child: MaterialApp(
        title: 'Recetas de Cocina',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[100],
          textTheme: TextTheme(
            titleLarge: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.teal[800]),
            titleMedium: TextStyle(fontSize: 18, color: Colors.teal[600]),
          ),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal)
              .copyWith(secondary: Colors.amber),
        ),
        home: const HomePage(),
      ),
    );
  }
}
