import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
 
class SubBHomeUi extends StatefulWidget {
  const SubBHomeUi({super.key});
 
  @override
  State<SubBHomeUi> createState() => _SubBHomeUiState();
}
 
class _SubBHomeUiState extends State<SubBHomeUi>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
 
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }
 
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
 
  @override
  Widget build(BuildContext context) {
   return ListView(
      padding: const EdgeInsets.all(10),
      children: [
 
        const SizedBox(height: 20),
 
        const Text(
          'สายด่วน\nอุบัติเหตุ',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
 
        const SizedBox(height: 20),
 
        Center(
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(
              Icons.add_location_outlined,
              size: 50,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
 
        const SizedBox(height: 20),
 
        hotlineCard('191','เหตุด่วนร้าย','assets/images/191.png'),
        hotlineCard('199','แจ้งไฟใหม่','assets/images/199.png'),
        hotlineCard('1192','สายด่วนรถหาย','assets/images/1192.png'),
        hotlineCard('1196','อุบัติเหตุทางน้ำ','assets/images/1196.png'),
        hotlineCard('1300','แจ้งคนหาย','assets/images/1300.png'),
        hotlineCard('1356','ศูนย์ปลอดภันคมนาคม','assets/images/1356.png'),
        hotlineCard('1554','หน่วยแพทน์กู้ชีพ','assets/images/1554.png'),
        hotlineCard('1546','ศูนย์เอราวัณ','assets/images/1646.png'),
        hotlineCard('1669','เจ็บป่วยฉุกเฉิน','assets/images/1669.png')
 
      ],
    );
  }
 
  Widget hotlineCard(String number,String title,String img){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(12),
 
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey),
      ),
 
      child: Row(
        children: [
 
          Image.asset(
            img,
            width: 30,
            height: 30,
          ),
 
          const SizedBox(width: 15),
 
          Expanded(
            child: Text(
              '$number  $title',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
 
          IconButton(
            icon: const Icon(Icons.call),
            onPressed: () async {
 
              final Uri phone = Uri.parse("tel:$number");
 
              if(await canLaunchUrl(phone)){
                await launchUrl(phone);
              }
 
            },
          )
 
        ],
      ),
    );
  }
}