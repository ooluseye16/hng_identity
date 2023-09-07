import 'package:flutter/material.dart';
import 'package:hng_identity/github_view.dart';

void main(List<String> args) {
  runApp(const HngIdentityApp());
}

class HngIdentityApp extends StatelessWidget {
  const HngIdentityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HNG Identity"),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "images/display.jpeg",
                frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                  return Container(
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.height / 5,
                      decoration: BoxDecoration(
                          // border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(20)),
                      clipBehavior: Clip.hardEdge,
                      child: child);
                },
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Oluseye Obisesan",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 8,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Slack Display name: ",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Tirioh",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(20)),
                child: const Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.mail),
                      title: Text("Oluseyeobitola1@gmail.com"),
                    ),
                    ListTile(
                      leading: Icon(Icons.center_focus_strong_outlined),
                      title: Text("Mobile"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GithubViewScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Center(child: Text("Open Github")),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
