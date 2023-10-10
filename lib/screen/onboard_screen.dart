import 'package:flutter/material.dart';
import 'package:plant_shop/screen/main_screen.dart';


class OnboardScreen extends StatelessWidget{
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Container(
            color: Colors.green.shade600,
            child: Padding(
              padding: const EdgeInsets.all(64.0),
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Plant Shop App',
                style: TextStyle(color: Colors.white),
              ),
              const Text(
                'Plant a Tree for Life',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'InclusiveSans'),
              ),
              Expanded(
                child: Image.asset('images/plant_onboard.png'),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const MainScreen();
                  }));
                },
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: const Text('Get Started'),
                    ))
                ],
              ),
            )
          ),
      )
    );
  }
}