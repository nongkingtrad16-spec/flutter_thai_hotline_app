import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/views/about_ui.dart';
import 'package:flutter_thai_hotline_app/views/sub_a_home_ui.dart';
import 'package:flutter_thai_hotline_app/views/sub_b_home_ui.dart';
import 'package:flutter_thai_hotline_app/views/sub_c_home_ui.dart';
import 'package:flutter_thai_hotline_app/views/sub_d_home_ui.dart';


class HomeUi extends StatefulWidget {
  const HomeUi({super.key});
 
  @override
  State<HomeUi> createState() => _HomeUiState();
}
 
class _HomeUiState extends State<HomeUi> {
 
  int currentIndexStatus = 0;
 
  List showBody = [
     SubAHomeUi(),
     SubBHomeUi(),
     SubCHomeUi(),
     SubDHomeUi(),
     
     
     
     
  ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('สายด่วน THAILAND',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 240, 1, 1),
         actions: [
          IconButton(
            icon: const Icon(Icons.info_outline, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutUI(),
                ),
              );
            },
          )
        ],
      ),
 
      body: showBody[currentIndexStatus],
 
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndexStatus,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromARGB(255, 240, 1, 1),
 
        onTap: (value){
          setState(() {
            currentIndexStatus = value;
          });
        },
 
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'การเดินทาง',
          ),
 
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            label: 'อุบัติเหตุ-เหตุฉุกเฉิน',
          ),
 
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: 'ธนาคาร',
          ),
 
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb),
            label: 'สาธารณูปโภค',
          ),
        ],
      ),
    );
  }
}