import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details Screen',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Colors.blue,
        centerTitle: true,),
      body: Container(
        child: Center(
          child: Text(
            'This is detail screen',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}

