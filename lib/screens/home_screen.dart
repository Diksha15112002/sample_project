import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
          centerTitle: true,),
      body: Center(
        child: Column(
          children: [

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ElevatedButton(
                  onPressed: ()
                            => context.go('/details'),
                          child: Text('Elevated Button'),
                        ),
                  TextButton(
                  onPressed: ()
                  =>context.go('/dialog'),
                  child: Text('Text Button'),
                  ),
                  OutlinedButton(
                  onPressed: ()
                  =>context.go('/drawer'),
                  child: Text('Outlined Button'),
                  ),
      IconButton(
        onPressed: ()
          =>context.go('/details'),
        icon: Icon(Icons.details_outlined),
      ),
                ],
              ),
            ),

  SizedBox(height: 120),
            ElevatedButton(
              onPressed: () => context.go('/details'),
              child: Text('Go to Details'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/dialog'),
              child: Text('Open Dialog Screen'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/drawer'),
              child: Text('Drawer Navigation'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
        },
        icon: Icon(Icons.home_outlined),
        label: Text('home'),
        backgroundColor: Colors.blue,
      ),
    );
  }
}























