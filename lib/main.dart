import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x =0;
  Random random = Random(10);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pinkAccent.shade100,
        appBar: AppBar(

          title: Center(child: Text('Lottery Application',style: TextStyle(color: Colors.black), )),
          backgroundColor: Colors.red.shade50,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Center(child: Text('Lottery Winning Number is 5', style: TextStyle(fontSize: 20, color: Colors.white),)),
            SizedBox(height: 15,),
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(

                  color: x==5?  Colors.blue : Colors.blue.shade100,
                borderRadius: BorderRadius.circular(20)
                    
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: x==5? Column(

                  children: const [
                    SizedBox(height: 30,),

                    Icon(Icons.done,size: 50,color: Colors.green,),
                    SizedBox(height: 40,),
                    Center(
                      child: Text('Congratulations!\n You Win ',textAlign: TextAlign.center,style: TextStyle(fontSize: 20),) ,
                    )

                  ],
                )

                    :Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.error ,size: 50,color: Colors.green, ),
                    SizedBox(height: 60,),
                    Center(
                      child: Text('BetterLuck Next Time!\nYour Number is $x\nTry Again',textAlign: TextAlign.center,style: TextStyle(fontSize: 20),) ,
                    )
                  ],
                ))),
          ],

        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x = random.nextInt(10);
            print(x);
            setState(() {});
          },

          child: const Icon(
            Icons.refresh,size: 50,
          ),
        ),
      ),
    );
  }
}

