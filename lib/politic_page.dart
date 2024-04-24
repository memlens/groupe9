import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LBJ Election',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://th.bing.com/th?id=OIP.CkIsRzEzNpPI6_OOlZsqggHaER&w=329&h=189&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.green.withOpacity(0.6),
                  Colors.yellow.withOpacity(0.6),
                  Colors.red.withOpacity(0.6),
                ],
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.5),
              SizedBox(
                height: 10,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.green
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundImage: const NetworkImage(
                        'https://source.unsplash.com/random'),
                    backgroundColor: Colors.transparent,
                    child: ClipOval(
                      child: Container(
                        color: Colors.green,
                        width: 64,
                        height: 64,
                        child: const Center(
                          child: Icon(
                            Icons.check_circle,
                            color: Colors.white,
                            size: 64,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.how_to_vote,
                        color: Colors.green,
                        size: 15,
                      ),
                      SizedBox(height: 2),
                      Text(
                        'LBJ Election',
                      ),
                      SizedBox(height: 2),
                      Text('La démocratie transparente'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Le vote est un devoir',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Chaque citoyen a le droit de prendre part à la vie politique en général.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.how_to_vote,
                    color: Colors.green,
                    size: 100,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context,"/politic");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text('Continuer avec son NPI'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
