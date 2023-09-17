import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future<void> onPullRefresh() async {
    //delay time
    return await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueAccent.shade100,
      body: LiquidPullToRefresh(
        height: 700,
        animSpeedFactor: 3,
        backgroundColor: Colors.blueAccent,
        color: Colors.blueAccent.shade100,
        onRefresh: onPullRefresh,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 300,
                  decoration: const BoxDecoration(
                    color: Colors.blueAccent
                  ),
                  child: Center(child: Text("Powered by: CodeTechX 🔥🔥",style: TextStyle(color: Colors.white, fontSize: 16),)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 300,
                  decoration: const BoxDecoration(
                      color: Colors.blueAccent
                  ),
                  child: const Center(child: Text("Developed by: SenpaiInTech",style: TextStyle(color: Colors.white, fontSize: 16),)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 300,
                  decoration: const BoxDecoration(
                      color: Colors.blueAccent
                  ),
                  child: const Center(child: Text("Developed For: Interested People 👍",style: TextStyle(color: Colors.white, fontSize: 16),)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 300,
                  decoration: const BoxDecoration(
                      color: Colors.blueAccent
                  ),
                  child: const Center(child: Text("Follow on Twitter: @SenpaiInTech",style: TextStyle(color: Colors.white, fontSize: 16),)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
