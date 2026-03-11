import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
 
class SubCHomeUi extends StatefulWidget {
  const SubCHomeUi({super.key});
 
  @override
  State<SubCHomeUi> createState() => _SubCHomeUiState();
}
 
class _SubCHomeUiState extends State<SubCHomeUi>
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
          'สายด่วน\nธนาคาร',
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
              Icons.account_balance,
              size: 50,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
 
        const SizedBox(height: 20),
 
        hotlineCard('1333','ธนาคารกรุงไทย','assets/images/1333.png'),
        hotlineCard('1115','ธนาคารออมสิน','assets/images/1115.png'),
        hotlineCard('028888888','ธนาคารกสิกรไทย','assets/images/028888888.png'),
        hotlineCard('021111111','ธนาคารกรุุงไทย','assets/images/021111111.png'),
        hotlineCard('1572','ธนาคารกรุงศรี.','assets/images/1572.png'),
        hotlineCard('1428','ธนาคารทีเอ็มบี.','assets/images/1428.png'),
        hotlineCard('1588','ธนาคารซิติแบงก์','assets/images/1588.png'),
        hotlineCard('1327','ธนาคารแลนแอนเฮา','assets/images/1327.png'),
        hotlineCard('026459000','ธนาคารอาคารสงเคราะห์','assets/images/026459000.png'),
        hotlineCard('027777777','ธนาคารไทยพานิชย์','assets/images/027777777.png'),
        hotlineCard('021655555','ธนาคารเกียรตินาคิน','assets/images/021655555.png'),
        hotlineCard('026975454','ธนาคารไทยเครดิต','assets/images/026975454.png'),
        hotlineCard('022851555','ธนาคารยูโอบี','assets/images/022851555.png'),
        hotlineCard('026336000','ธนาคารทิสโก','assets/images/026336000.png'),
        hotlineCard('022042766','ธนาคารอิสลาม','assets/images/022042766.png'),
        hotlineCard('026267777','ธนาคารซีไอเอ็มบี','assets/images/026267777.png'),
 
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