import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold"),
        centerTitle: false,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreen,
        child: Icon(Icons.call_missed),
        
        onPressed: () => debugPrint("call missed"),),


      bottomNavigationBar: BottomNavigationBar(items: const [
     BottomNavigationBarItem(icon: Icon(Icons.circle),label: "first"),
     BottomNavigationBarItem(icon: Icon(Icons.mail),label: "second"),
     BottomNavigationBarItem(icon: Icon(Icons.access_alarm),label: "second"),
      ],onTap: (int index) => debugPrint("tapped item $index"),),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            CustomButton(),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(
          content: Text('Hello! Mark,'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.pinkAccent,
          borderRadius: BorderRadius.circular(8.0), 
        ),
        child: Center(child: Text('Button', style: TextStyle(color: Colors.black))),
      ),

    );
  }
}
