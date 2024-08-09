import 'package:flutter/material.dart';
import 'package:intro_screen/screen_components/screen_dot.dart';
import 'package:intro_screen/screen_components/screen_items.dart';

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
      debugShowCheckedModeBanner: false,
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
       appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: Padding(
          padding: EdgeInsets.only(top:40,right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            
            children: [
               GestureDetector(
                onDoubleTap: () {
                  pageController.jumpToPage(2);
                } ,
                child: Text(pageIndex!=2?"SKIP":'',
                style: TextStyle(
                  fontFamily: 'Poppins'
                ),),
              )
            ],
          ),
        ),

       ),

       body: Stack(
         children: [
           PageView(
            controller: pageController,
            onPageChanged: ChangePages,
            physics: BouncingScrollPhysics(),
            children: [
              PageItem('assets/img/spash1.png', 'Introduction1', 'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, '),
              PageItem('assets/img/splash2.png', 'Introduction2', 'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, '),
              PageItem('assets/img/splash3.png', 'Introduction3', 'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, '),
              
            ],
           
           ),
           Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Spacer(),

                Container(
                  width: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PageDot(pageIndex==0? themeColor:Colors.grey),
                      PageDot(pageIndex==1? themeColor:Colors.grey),
                      PageDot(pageIndex==2? themeColor:Colors.grey),
                    ],
                  ),

                ),
                SizedBox(height:80 ),

                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      color: themeColor,
                      borderRadius: BorderRadius.circular(20)

                    ),
                    child: Center(
                      child: pageIndex!=2?GestureDetector(
                        onTap: () => pageController.nextPage(duration: 
                        Duration(milliseconds: 200), curve: Curves.easeInOut),
                        child: Text("NEXT",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Poppins'
                                        ),),
                      ):Text("GET STARTED",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Poppins'
                                        ),),
                    ),
                  ),
                ),

                SizedBox(height:30 ),


              ],),
           )
         ],
       ),
    );
  }
}
