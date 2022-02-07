import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeAssignment1 extends StatefulWidget {
  const HomeAssignment1({Key? key}) : super(key: key);
  static const String id = 'first_assignment';

  @override
  _HomeAssignment1State createState() => _HomeAssignment1State();
}


class _HomeAssignment1State extends State<HomeAssignment1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(child: const Text("welcome", style: TextStyle(color: Colors.black, fontSize: 16), textAlign: TextAlign.center).tr()),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.2,
                    color: CupertinoColors.systemGreen,
                    child: const Text('English', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    onPressed: (){
                      // context.locale = Locale('en', 'US'); <= deprecated
                      context.setLocale(const Locale('en', 'US'));
                    },
                  ),
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.2,
                    color: CupertinoColors.systemRed,
                    child: const Text('Russian', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    onPressed: (){
                      // context.locale = Locale('ru', 'RU'); <= deprecated
                      context.setLocale(const Locale('ru', 'RU'));
                    },
                  ),
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.2,
                    color: CupertinoColors.systemBlue,
                    child: const Text('Uzbek', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    onPressed: (){
                      // context.locale = Locale('en', 'US'); <= deprecated
                      context.setLocale(const Locale('uz', 'UZB'));
                    },
                  ),
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.2,
                    color: CupertinoColors.systemOrange,
                    child: const Text('French', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    onPressed: (){
                      // context.locale = Locale('en', 'US'); <= deprecated
                      context.setLocale(const Locale('fr', 'FRA'));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
