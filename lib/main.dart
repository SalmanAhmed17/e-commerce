
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
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
// ignore: non_constant_identifier_names
MySnackbar(message, context){
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message))
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber, 
        elevation: 0,
        leading: IconButton(onPressed: (){MySnackbar("This is person",context);}, icon: const Icon(Icons.person)),
        title: const Text("Salman's App"),
        toolbarOpacity: 0.6,
        centerTitle: true,
        actions:  [
          IconButton(
            onPressed: (() {MySnackbar("This is comment",context);}),
             icon: const Icon(Icons.comment)),
          IconButton(onPressed: (() {MySnackbar("This is settings",context);}),
           icon: const Icon(Icons.settings)),
          IconButton(onPressed: (() {MySnackbar("This is search",context);}), 
          icon: const Icon(Icons.search)),
          IconButton(onPressed: (() {MySnackbar("This is message",context);}), 
          icon: const Icon(Icons.message)),
        ],
        iconTheme: IconTheme.of(context)),
        floatingActionButton: FloatingActionButton(onPressed: (() {
          MySnackbar("Press here to add items", context);
        }),
         elevation: 10,
         backgroundColor: Colors.green, 
         child: const Icon(Icons.shopping_basket),),
         
    );
  }
}