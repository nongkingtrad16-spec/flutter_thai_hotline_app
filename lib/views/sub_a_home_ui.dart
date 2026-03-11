import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
 
class SubAHomeUi extends StatefulWidget {
  const SubAHomeUi({super.key});
 
  @override
  State<SubAHomeUi> createState() => _SubAHomeUiState();
}
 
class _SubAHomeUiState extends State<SubAHomeUi>
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
          'สายด่วน\nการเดินทาง',
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
              Icons.car_crash,
              size: 50,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
 
        const SizedBox(height: 20),
 
        hotlineCard('1146','กรมทางหลวงชนบท','assets/images/1146.png'),
        hotlineCard('1155','ตำรวจท่องเที่ยว','assets/images/1155.png'),
        hotlineCard('1193','ตำรวจทางหลวง','assets/images/1193.png'),
        hotlineCard('1197','ข้อมูลจราจร','assets/images/1197.png'),
        hotlineCard('1348','ขสมก.','assets/images/1348.png'),
        hotlineCard('1490','บขส.','assets/images/1490.png'),
        hotlineCard('1543','เส้นทางทางด่วน','assets/images/1543.png'),
        hotlineCard('1586','กรมทางหลวง','assets/images/1586.png'),
        hotlineCard('1690','การรถไฟแห่งประเทศไทย','assets/images/1690.png')
 
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