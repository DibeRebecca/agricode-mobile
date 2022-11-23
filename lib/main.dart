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
       
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
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
 

  void _incrementCounter() {
    setState(() {
     
      
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChatBot Demo'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 67, 95, 172),
        actions: [
            PopupMenuButton<int>(
              itemBuilder: (context) => [
                // popupmenu item 1
                PopupMenuItem( 
                  value: 1, 
                  // row has two child icon and text.
                  child: Row( 
                    children: [
                      Icon(Icons.star),
                      SizedBox(
                        // sized box with width 10
                        width: 10,
                      ),
                      Text("Get The App")
                    ],
                  ),
                ),
                // popupmenu item 2
                PopupMenuItem(
                  value: 2,
                  // row has two child icon and text
                  child: Row(
                    children: [
                      Icon(Icons.chrome_reader_mode),
                      SizedBox(
                        // sized box with width 10
                        width: 10,
                      ),
                      Text("About")
                    ],
                  ),
                ),
              ],
              offset: Offset(0, 100),
              color: Color.fromARGB(255, 255, 255, 255),
              elevation: 2,
            ),
          ],
          ),

        body: Center(
         child: Text('Welcome to our Chatbot'),
        ),
  floatingActionButton:FloatingActionButton( //Floating action button on Scaffold
      onPressed: (){
          //code to execute on button press
      },
      child: Icon(Icons.keyboard_voice_outlined, size: 30,), //icon inside button
  ),

  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  //floating action button position to center

  bottomNavigationBar: BottomAppBar( //bottom navigation bar on scaffold
    color:Color.fromARGB(255, 67, 95, 172),
    shape: CircularNotchedRectangle(), //shape of notch
    notchMargin: 5, //notche margin between floating button and bottom appbar
    child: Row( //children inside bottom appbar
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        IconButton(icon: Icon(Icons.message_rounded, color: Colors.white,), onPressed: () {},),
        IconButton(icon: Icon(Icons.call, color: Colors.white,), onPressed: () {},),
      ],
    ),
  ),
);
  }
}
