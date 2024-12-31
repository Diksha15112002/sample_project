import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class DialogScreen extends StatefulWidget {
  const DialogScreen({super.key});

  @override
  State<DialogScreen> createState() => _DialogScreenState();
}

class _DialogScreenState extends State<DialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dialog Screen',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
        centerTitle: true,
      backgroundColor: Colors.blue,
        leading: InkWell(
            onTap: (){
                context.go('/');
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Dialog Title'),
                content: Text('This is a dialog box.'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Close'),
                  ),
                ],
              ),
            );
          },
          child: Text('Show Dialog'),
        ),
      ),
    );
  }
}
