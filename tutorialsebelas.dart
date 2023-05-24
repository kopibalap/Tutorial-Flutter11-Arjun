import 'package:flutter/material.dart';
import 'tutorialduaARJUN.dart';
import 'tutorialsebelasdua.dart';


void main() {
  runApp(const MyApp11());
}

class MyApp11 extends StatelessWidget {
  const MyApp11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ABP Minggu 11',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'ABP Minggu 11'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selected = 0;
  PageController pc = PageController(initialPage: 0);


  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.white,
      body: SafeArea(
        child: PageView(
          controller: pc,
          onPageChanged: (index){
            setState(() {
              selected = index;

            });


            },

          children: [
            Center(
              child: InkWell(
                child: Text('Go to Home Page',style: TextStyle(fontSize: 30)),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => MyApp11()
                  ));
                },
              ),
            ),

            Center(
              child: Text('Email page' , style: TextStyle(fontSize: 30)),
            ),
            MyApp11_2(),

            Center(
              child: Text('Profil page' , style: TextStyle(fontSize: 30)),
            ),
          ],
        ),
      ),


      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.white,
        currentIndex: selected,
        onTap: (index){
          setState(() {
            selected = index;
          });
          pc.animateToPage(
            index,
            duration: Duration(milliseconds: 200),
            curve: Curves.linear);
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'home'),

          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'home'),

          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'home'),

        ],

      ),

    );
  }
}
























