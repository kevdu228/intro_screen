import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  // create all variables we will need for this app
  // :)


  final pageController = PageController();
  bool lastPage = false; 
  int pageIndex = 0;
  Color themeColor = Color(0xff0088CC);


  //this function will change the pages

  ChangePages(int index){
    setState(() {
      pageIndex = index;
    });
  }

  
  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
       
    );
  }
}
