import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'utility.dart';
import 'themes/theme_provider.dart';  // Ensure correct import

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,  // Hide debug banner
            theme: ThemeData(
              useMaterial3: true,
              colorScheme: themeProvider.lightScheme, // Light theme colors
              scaffoldBackgroundColor: themeProvider.lightScheme.background, // Apply background color
            ),
            darkTheme: ThemeData(
              useMaterial3: true,
              colorScheme: themeProvider.darkScheme, // Dark theme colors
              scaffoldBackgroundColor: themeProvider.darkScheme.background, // Apply background color
            ),
            themeMode: themeProvider.themeMode,
            home: HomePage(),
          
          );
        },
      ),
    );
  }
}
