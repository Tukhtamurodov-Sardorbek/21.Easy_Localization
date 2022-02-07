import 'package:flutter/material.dart';
import 'package:localization/pages/home_assignment1.dart';
import 'package:localization/pages/home_assignment2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _toPage(String id){
    Navigator.of(context).pushNamed(id);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MaterialButton(
                elevation: 10,
                minWidth: MediaQuery.of(context).size.width * 0.9,
                height: 52,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                color: Colors.blueGrey,
                child: const Text('Localization First Assignment', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                onPressed: (){
                  _toPage(HomeAssignment1.id);
                },
              ),
              const SizedBox(height: 20),
              MaterialButton(
                elevation: 10,
                minWidth: MediaQuery.of(context).size.width * 0.9,
                height: 52,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                color: Colors.blueGrey,
                child: const Text('Localization Second Assignment', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                onPressed: (){
                  _toPage(HomeAssignment2.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
