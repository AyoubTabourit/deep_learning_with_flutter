import 'package:deeplearning/Ann.dart';
import 'package:deeplearning/Cnn.dart';
import 'package:flutter/material.dart';
import 'package:deeplearning/LoadImage.dart';

class Draw extends StatefulWidget {
  const Draw({super.key});

  @override
  State<Draw> createState() => _DrawState();
}

class _DrawState extends State<Draw> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey,
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.black, Colors.grey])),
            child: CircleAvatar(
              backgroundImage: AssetImage('Images/chat1.jpg'),
            ),
          ),
          Column(
            children: [
               ExpansionTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
                children: [
                  ListTile(
                    title: Text('Documentation'),

                  ),
                  ListTile(
                    title: const Text('Load image'),
                    leading: const Icon(Icons.image),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoadImage()));
                    },
                  ),
                  const ListTile(
                    title: Text('Take a picture'),
                    leading: Icon(Icons.camera),
                  ),
                ],
              ),


               ExpansionTile(
                title: Text('Chose algorithme'),
                leading: Icon(Icons.settings),
                children: [
                  ListTile(
                    title: Text('ANN'),
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Ann()));
                    },
                  ),
                  ListTile(
                    title: Text('CNN'),
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Cnn(title: "CNN")));
                    },
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
