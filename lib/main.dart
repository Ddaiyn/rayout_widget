import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text('山田 太郎'),
            subtitle: const Text("070-1234-567"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){},
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text('鈴木 一郎'),
            subtitle: const Text("080-1234-567"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){},
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text('佐藤 花子'),
            subtitle: const Text("090-1234-567"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
