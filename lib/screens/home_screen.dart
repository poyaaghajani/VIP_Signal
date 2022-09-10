import 'package:flutter/material.dart';
import 'package:vip_signal/screens/create_account.dart';
import 'package:vip_signal/screens/signal_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void navigateToPage(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'VIP SIGNAL',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'mr', fontSize: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Icon(
                        Icons.cell_tower,
                        size: 38,
                        color: Colors.blueGrey[700],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60),
                Image(
                  image: AssetImage('images/w.png'),
                ),
                SizedBox(height: 30),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.indigo[900],
                    primary: Colors.white,
                    minimumSize: Size(170, 40),
                  ),
                  onPressed: () {
                    navigateToPage(context, SignalPage());
                  },
                  child: Text(
                    'enter',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    primary: Colors.blueGrey[600],
                    minimumSize: Size(170, 40),
                    side: BorderSide(width: 2.5, color: Colors.blueGrey),
                  ),
                  onPressed: () {
                    navigateToPage(
                      context,
                      CreateAccountScreen(),
                    );
                  },
                  child: Text(
                    'create account',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
