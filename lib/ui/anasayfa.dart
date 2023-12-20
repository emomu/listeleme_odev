import 'package:flutter/material.dart';
import 'package:listeleme_odev/data/takimlar.dart';
import 'package:listeleme_odev/ui/detay_sayfa.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  Future<List<Maclar>> macYukle() async {
    var macListesi = <Maclar>[];
    var m1 = Maclar(
        takim1png: "galatasaray.png",
        takim2png: "fenerbahce.png",
        ligAdi: "Süperlig",
        takimAdi1: "Galatasaray",
        takimAdi2: "Fenerbahçe",
        skor1: 3,
        skor2: 0,
        saat: "20.00",
        tarih: "19.05.2023",
        saha: "Rams Park",
        teknikdirektor1: "Okan Buruk",
        teknikdirektor2: "İsmail Kartal");
    var m2 = Maclar(
        takim1png: "besiktas.png",
        takim2png: "trabzonspor.png",
        ligAdi: "Süperlig",
        takimAdi1: "Beşiktaş",
        takimAdi2: "Trabzonspor",
        skor1: 1,
        skor2: 1,
        saat: "21.00",
        tarih: "21.05.2023",
        saha: "Vodafone Arena",
        teknikdirektor1: "Rıza Çalımbay",
        teknikdirektor2: "Abdullah Avcı");
    var m3 = Maclar(
        takim1png: "pendikspor.png",
        takim2png: "kasimpasa.png",
        ligAdi: "Süperlig",
        takimAdi1: "Pendikspor",
        takimAdi2: "Kasımpaşa",
        skor1: 6,
        skor2: 0,
        saat: "17.00",
        tarih: "22.05.2023",
        saha: "Pendik Stadı",
        teknikdirektor1: "Osman Özköylü",
        teknikdirektor2: "Kemal Özdeş");
    var m4 = Maclar(
        takim1png: "istanbulspor.png",
        takim2png: "antalyaspor.png",
        ligAdi: "Süperlig",
        takimAdi1: "İstanbulspor",
        takimAdi2: "Antalyaspor",
        skor1: 0,
        skor2: 2,
        saat: "14.00",
        tarih: "25.05.2023",
        saha: "Antalya Stadyumu",
        teknikdirektor1: "Nuri Şahin",
        teknikdirektor2: "Hakan Yakın");
    var m5 = Maclar(
        takim1png: "barcelona.png",
        takim2png: "realmadrid.png",
        ligAdi: "LaLiga",
        takimAdi1: "Barcelona",
        takimAdi2: "Real Madrid",
        skor1: 1,
        skor2: 2,
        saat: "23.00",
        tarih: "30.05.2023",
        saha: "Santiago Barnebau",
        teknikdirektor1: "Xavi",
        teknikdirektor2: "Carlo Ancelotti");
    var m6 = Maclar(
        takim1png: "arsenal.png",
        takim2png: "chelsea.png",
        ligAdi: "Premier Lig",
        takimAdi1: "Arsenal",
        takimAdi2: "Chelsea",
        skor1: 1,
        skor2: 0,
        saat: "22.00",
        tarih: "02.06.2023",
        saha: "Emirates Stadyumu",
        teknikdirektor1: "Mikel Arteta",
        teknikdirektor2: "Mauricio Pochettino");

    macListesi.add(m1);
    macListesi.add(m2);
    macListesi.add(m3);
    macListesi.add(m4);
    macListesi.add(m5);
    macListesi.add(m6);
    return macListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Futkolik",style: TextStyle(color: Colors.yellow),) ,centerTitle: true,backgroundColor: Colors.deepPurple,),
      body:
      FutureBuilder<List<Maclar>>(
        future: macYukle(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            var macListesi = snapshot.data;
            return ListView.builder(
              itemCount: macListesi!.length,
              itemBuilder: (context,indeks) {
                var mac = macListesi[indeks];
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(mac : mac)));
                  },
                  child: SizedBox(
                    height: 75,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("${mac.ligAdi} - ${mac.tarih}",style: TextStyle(color: Colors.red,fontSize: 16),)
                            ],
                          ),
                          Text("${mac.takimAdi1} ${mac.skor1} - ${mac.skor2} ${mac.takimAdi2}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                        ],
                      ),

                    ),
                  ),
                );
              }
            );
          }else{
            return Center();
          }
        },
      ),
    );
  }
}
