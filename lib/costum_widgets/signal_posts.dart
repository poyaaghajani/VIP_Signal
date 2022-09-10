import 'package:flutter/material.dart';

Widget getSignalPosts(
    {required String imageName,
    required String title,
    required String buy,
    required String sell}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(6),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(9),
                  child: Image(
                    image: AssetImage('images/$imageName.png'),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                '$title',
                style: TextStyle(fontFamily: 'mr', fontSize: 18),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        '$sell',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(
                        Icons.check_circle_outline,
                        color: Colors.redAccent,
                        size: 20,
                      )
                    ],
                  ),
                  SizedBox(width: 14),
                  Row(
                    children: [
                      Text(
                        '$buy',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(
                        Icons.check_circle_outline,
                        color: Colors.greenAccent,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 5),
              Container(
                width: 180,
                child: Divider(
                  color: Colors.black,
                  thickness: 1.5,
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    ],
  );
}
