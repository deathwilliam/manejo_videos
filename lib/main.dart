import 'package:flutter/material.dart';
import 'package:manejo_videos/config/theme/app_theme.dart';
import 'package:manejo_videos/presentation/providers/discover_provider.dart';
import 'package:manejo_videos/presentation/screens/discover_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider( 
          lazy: false,
          create: (_) => DiscoverProvider()..loadNextPage()
          )
      ],     
      child: MaterialApp(
      title: 'AppVideos',
      debugShowCheckedModeBanner: false,
      theme: appTheme().getTheme(),
      home: const DiscoverScreen()
    ),
   );
  }

}