import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: MyHomePageOfTheCounter(),
    );
  }
}

class MyHomePageOfTheCounter extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyHomePage();

}

class MyHomePage extends State<StatefulWidget> {
  int cont =0;

  void count(){
    setState(() {
      cont++;
    });
  }

  void reset(){
    setState(() {
      cont =0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Counter Application"),
        backgroundColor: Colors.cyan,
      ),

      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Counter: $cont",
              style: GoogleFonts.abel(
                fontSize: 40,
                fontWeight: FontWeight.bold,

              ),
              ),

              SizedBox(
                height: 60,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(

                    onPressed: count,
                    child: Text("Count",
                    style: GoogleFonts.albertSans(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                    )
                ),
              ),
              ElevatedButton(
                  onPressed: reset,
                  child: Text("Reset",
                    style: GoogleFonts.albertSans(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  )
              ),
            ],
          ),
        ),
      )
    );
  }

}



