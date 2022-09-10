import 'package:flutter/material.dart';
import 'package:vip_signal/costum_widgets/signal_posts.dart';

class SignalPage extends StatelessWidget {
  const SignalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 24,
        ),
        backgroundColor: Colors.greenAccent[700],
        centerTitle: true,
        title: Text(
          'VIP News & Signals',
          style: TextStyle(fontFamily: 'mr', fontSize: 25),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              getSignalPosts(
                  imageName: 's',
                  title: 'برای 3 اردیبهشت Safe Moon سیگنال خرید ',
                  buy: 'خرید روی: 1300',
                  sell: 'فروش روی: 1250'),
              getSignalPosts(
                  imageName: 'r',
                  title: 'برای 3 اردیبهشت Ripple سیگنال خرید ',
                  buy: 'خرید روی: 1370',
                  sell: 'فروش روی: 1400'),
              getSignalPosts(
                  imageName: 'a',
                  title: 'برای 3 اردیبهشت Alchemy Pay سیگنال خرید ',
                  buy: 'خرید روی: 1500',
                  sell: 'فروش روی: 1430'),
              getSignalPosts(
                  imageName: 'c',
                  title: 'برای 3 اردیبهشت Cosmos سیگنال خرید ',
                  buy: 'خرید روی: 1100',
                  sell: 'فروش روی: 1150'),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.greenAccent[400],
                  primary: Colors.white,
                  minimumSize: Size(170, 40),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'exit',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
