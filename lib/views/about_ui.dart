import 'package:flutter/material.dart';

class AboutUI extends StatelessWidget {
  const AboutUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("สายด่วน THAILAND",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 252, 1, 14),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                "ผู้จัดทำ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Container(
                  width: 120,
                  height: 120,
                  child: Image(image: AssetImage('assets/images/sau.png'))),
              const SizedBox(height: 10),
              const Text(
                "มหาวิทยาลัยเอเชียอาคเนย์",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/images/king.png'),
              ),
              const SizedBox(height: 20),
              const Text("6619410042"),
              const Text("Wuttisak Poomeechit"),
              const Text("s6619410042@sau.ac.th"),
              const Text("วิศวคอมพิวเตอร์"),
              const Text("วิศวกรรมศาสตร์"),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
