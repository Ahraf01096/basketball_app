import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  // void addOnePoint(){teamAPoints++;}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: const Color(0xFFA40309),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Points Counter',
          style: TextStyle(),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/bb.jpg'), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black12),
                        child: const Text(
                          'Team A',
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Text(
                        '$teamAPoints',
                        style: const TextStyle(
                            fontSize: 140,
                          color: Colors.white70,

                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                            Color(0xFFF66E3B),
                          )),
                          onPressed: () {
                            setState(() {
                              teamAPoints++;
                            });
                          },
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(color: Colors.white),
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Color(0xFFF66E3B),
                          )),
                          onPressed: () {
                            setState(() {
                              teamAPoints = teamAPoints + 2;
                            });
                          },
                          child: const Text(
                            'Add 2 Point',
                            style: TextStyle(color: Colors.white),
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Color(0xFFF66E3B),
                          )),
                          onPressed: () {
                            setState(() {
                              teamAPoints = teamAPoints + 3;
                            });
                          },
                          child: const Text(
                            'Add 3 Point',
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 450,
                    child: VerticalDivider(
                      color: Colors.white54,
                      thickness: 1,
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black12),
                        child: const Text(
                          'Team B',
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Text(
                        '$teamBPoints',
                        style: const TextStyle(
                            fontSize: 140,
                            color: Colors.white70
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Color(0xFFF66E3B),
                              )),
                          onPressed: () {
                            setState(() {
                              teamBPoints++;
                            });
                          },
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(color: Colors.white),
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Color(0xFFF66E3B),
                              )),
                          onPressed: () {
                            setState(() {
                              teamBPoints = teamBPoints + 2;
                            });
                          },
                          child: const Text(
                            'Add 2 Point',
                            style: TextStyle(color: Colors.white),
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Color(0xFFF66E3B),
                              )),
                          onPressed: () {
                            setState(() {
                              teamBPoints = teamBPoints + 3;
                            });
                          },
                          child: const Text(
                            'Add 3 Point',
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Color(0xFFF66E3B),
                          ),
                          minimumSize: MaterialStatePropertyAll(Size(150, 50))),
                      onPressed: () {
                        setState(() {
                          teamAPoints = 0;
                          teamBPoints = 0;
                        });
                      },
                      child: const Text(
                        'Reset',
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
