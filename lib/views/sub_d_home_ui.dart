import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
 
class SubDHomeUi extends StatefulWidget {
  const SubDHomeUi({super.key});
 
  @override
  State<SubDHomeUi> createState() => _SubDHomeUiState();
}
 
class _SubDHomeUiState extends State<SubDHomeUi>
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
          'สายด่วน\nสาธารณูปโภค',
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
              Icons.ad_units_outlined,
              size: 50,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
 
        const SizedBox(height: 20),
 
        hotlineCard('1130','ไฟฟ้านครหลวง','assets/images/1130.png'),
        hotlineCard('1129','ไฟฟ้าส่วนภูมิภาค','assets/images/1129.png'),
        hotlineCard('1416','ไฟฟ้าผลิต','assets/images/1416.png'),
        hotlineCard('1125','การประปานครหลวง','assets/images/1125.png'),
        hotlineCard('1662','การประปาส่วนภูมิภาค','assets/images/1662.png'),
        hotlineCard('1242','TRUE.','assets/images/1242.png'),
        hotlineCard('1678','DTAC','assets/images/1678.png'),
        hotlineCard('1175','AIS','assets/images/1175.png'),
        hotlineCard('1100','TOT','assets/images/1100.png')
 
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