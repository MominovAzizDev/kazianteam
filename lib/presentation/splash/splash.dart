import 'package:flutter/material.dart';
import 'package:kaizenteam/presentation/auth/appAuth.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Appauth()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.asset(
                  "assets/book.png",
                  width: 100,
                  color: Colors.white,
                ),
              ),
              Text(
                "Kaizen Team",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Continuous improvement together",
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
              SizedBox(height: 40),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListTile(
                  leading: Image.asset(
                    "assets/people.png",
                    width: 50,
                    color: Colors.white54,
                  ),
                  title: Text(
                    "Team Challenges",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "Collaborate and improve",
                    style: TextStyle(color: Colors.white54),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListTile(
                  leading: Image.asset(
                    "assets/book.png",
                    width: 50,
                    color: Colors.white54,
                  ),
                  title: Text(
                    "Learning Paths",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "Continuous development",
                    style: TextStyle(color: Colors.white54),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListTile(
                  leading: Image.asset(
                    "assets/trophy.png",
                    width: 50,
                    color: Colors.white54,
                  ),
                  title: Text(
                    "Achievements",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "Celebrate progress",
                    style: TextStyle(color: Colors.white54),
                  ),
                ),
              ),

              SizedBox(height: 30),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(5),
                  ),
                  padding: EdgeInsets.only(
                    left: 120,
                    right: 120,
                    top: 15,
                    bottom: 15,
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Appauth()),
                  );
                },
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
