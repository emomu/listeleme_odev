import 'package:flutter/material.dart';
import 'package:listeleme_odev/data/takimlar.dart';

class DetaySayfa extends StatefulWidget {
  Maclar mac;


  DetaySayfa({required this.mac});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${widget.mac.takimAdi1} - ${widget.mac.takimAdi2}",style: TextStyle(color: Colors.yellow),),centerTitle: true,backgroundColor: Colors.deepPurple,iconTheme: IconThemeData(color: Colors.white),),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Container(
                alignment: Alignment.center,
                width: 500,
                child: Text(widget.mac.ligAdi,style: TextStyle(color: Colors.deepPurple,fontSize: 20),),
                color: Colors.yellow,
              ),
            Container(
              alignment: Alignment.center,
              width: 500,
              child: Text(widget.mac.tarih,style: TextStyle(color: Colors.white,fontSize: 20),),
              color: Colors.red,
            ),
            Container(
              alignment: Alignment.center,
              width: 500,
              child: Text("${widget.mac.saat}",style: TextStyle(color: Colors.white,fontSize: 20),),
              color: Colors.black,
            ),
            Container(
              alignment: Alignment.center,
              width: 500,
              child: Text("${widget.mac.takimAdi1} ${widget.mac.skor1} - ${widget.mac.skor2} ${widget.mac.takimAdi2}",style: TextStyle(color: Colors.white,fontSize: 20),),
              color: Colors.blueAccent,
            ),
            Container(
              alignment: Alignment.center,
              width: 500,
              child: Text("${widget.mac.teknikdirektor1} - ${widget.mac.teknikdirektor2}",style: TextStyle(color: Colors.white,fontSize: 20),),
              color: Colors.green,
            ),
            Container(
              alignment: Alignment.center,
              width: 500,
              child: Text("${widget.mac.saha}",style: TextStyle(color: Colors.white,fontSize: 20),),
              color: Colors.brown,
            ),

          ],
        ),
      ),
    );
  }
}
