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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo.shade100),
        // useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var no1Controller= TextEditingController();
  var no2Controller =TextEditingController();
  var Result="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),


      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                TextField(
            decoration: new InputDecoration(
              hintText: '000',),
                  keyboardType: TextInputType.number,
                  controller: no1Controller,

                ),
                TextField(
                  decoration: new InputDecoration(
                    hintText: '000',),
                  keyboardType: TextInputType.number,
                  controller: no2Controller,
                ),

                SizedBox(height: 25,),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(onPressed: (){
                        var no1=int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());
                        var sum= no1+no2;
                        Result = "Result is $sum";
                        setState(() {

                        });

                      }, child:Text('Add')),
                      ElevatedButton(onPressed: (){
                        var no1=int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());
                        var diff= no1-no2;
                        Result = "Result is $diff";
                        setState(() {

                        });
                      }, child: Text('Sub')),
                      ElevatedButton(onPressed: (){
                        var no1=int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());
                        var mul= no1*no2;
                        Result = "Result is $mul";
                        setState(() {

                        });
                      }, child: Text('Mul')),
                      ElevatedButton(onPressed: (){
                        var no1=int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());
                        var div= no1/no2;
                        Result = "Result is ${div.toStringAsFixed(2)}";
                        setState(() {

                        });
                      }, child: Text('Div')),
                      ElevatedButton(
                        onPressed: () {
                          no1Controller.text = '';
                          no2Controller.text = '';
                          Result = '';
                          setState(() {});
                        },
                        child: Text('Clear'),
                      ),


                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(21),
                child: Text(Result,style: TextStyle(fontSize: 25,  color: Colors.grey),)

                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}
