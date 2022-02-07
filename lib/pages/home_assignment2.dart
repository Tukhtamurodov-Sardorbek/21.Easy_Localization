import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeAssignment2 extends StatefulWidget {
  const HomeAssignment2({Key? key}) : super(key: key);
  static const String id = 'second_assignment';

  @override
  _HomeAssignment2State createState() => _HomeAssignment2State();
}

class _HomeAssignment2State extends State<HomeAssignment2> {
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
                child: Center(child: const Text("flutter").tr()),
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
                    child: const Text('Korean', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    onPressed: (){
                      // context.locale = Locale('kr', 'KOR'); <= deprecated
                      context.setLocale(const Locale('kr', 'KOR'));
                    },
                  ),
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.2,
                    color: CupertinoColors.systemBlue,
                    child: const Text('Japanese', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    onPressed: (){
                      // context.locale = Locale('en', 'US'); <= deprecated
                      context.setLocale(const Locale('jp', 'JPN'));
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
