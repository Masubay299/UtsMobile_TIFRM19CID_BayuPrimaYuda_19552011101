import 'package:flutter/material.dart';

import 'detailcard.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<ProdukModel> model = [];
  List<ProdukModel> sreach = [];

  @override
  void initState() {
    model = [
      ProdukModel(
          nama: "Pink",
          warna: Color(0xffcf9496),
          harga: "48.00",
          image: 'assets/InstaxMini7plus_Pink_R.png'),
      ProdukModel(
          nama: "Mint",
          warna: Color(0xff70b1a1),
          harga: "48.00",
          image: 'assets/InstaxMini7plus_Mint_R.png'),
      ProdukModel(
          nama: "Blue",
          warna: Color(0xff77a0c6),
          harga: "48.00",
          image: 'assets/InstaxMini7plus_Blue_R.png'),
      ProdukModel(
          nama: "Choral",
          warna: Color(0xffb0463c),
          harga: "48.00",
          image: 'assets/InstaxMini7plus_Choral_R.png'),
      ProdukModel(
          nama: "Lavender",
          warna: Color(0xff855f8c),
          harga: "48.00",
          image: 'assets/InstaxMini7plus_Lavender_R.png'),
      ProdukModel(
          nama: "Pink",
          warna: Color(0xffcf9496),
          harga: "48.00",
          image: 'assets/InstaxMini7plus_Pink_R.png'),
    ];

    sreach = model;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget card(ProdukModel model) {
      return Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Detail(
                          card: model,
                        )),
              );
            },
            child: Container(
              height: 150,
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              margin: new EdgeInsets.only(right: 30.0, top: 12),
              decoration: BoxDecoration(
                color: model.warna,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Limited Edition',
                      style: TextStyle(color: Colors.white)),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: RichText(
                      text: TextSpan(
                        text: 'Instax ',
                        style: TextStyle(color: Colors.white),
                        children: <TextSpan>[
                          TextSpan(
                              text: "Mini " + model.nama + " 7+",
                              style: TextStyle(fontWeight: FontWeight.w800)),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: RichText(
                      text: TextSpan(
                        text: '\$ ',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        children: <TextSpan>[
                          TextSpan(
                              text: model.harga,
                              style: TextStyle(fontWeight: FontWeight.w900)),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Detail(card: model)),
                      );
                    },
                    child: Text(
                      'Buy',
                      style: TextStyle(color: model.warna),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15), // <-- Radius
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
              margin: new EdgeInsets.fromLTRB(0, 35, 0, 0),
              alignment: FractionalOffset.centerRight,
              child: Image.asset(model.image, height: 100)),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Center(
            child: Image.asset('assets/fujifilm-banner.png', height: 20)),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_bag),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                TextField(
                  style: TextStyle(color: Colors.white),
                  onChanged: (text) {
                    text = text.toLowerCase();
                    setState(() {
                      model = sreach.where((val) {
                        var cariNama = val.nama.toLowerCase();
                        return cariNama.contains(text);
                      }).toList();
                    });
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.white),
                      hintText: "Search",
                      fillColor: Colors.black),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: model.length,
                  itemBuilder: (BuildContext context, int index) {
                    return card(model[index]);
                  },
                )
              ],
            )),
      ),
    );
  }
}

class ProdukModel {
  ProdukModel({
    required this.nama,
    required this.warna,
    required this.harga,
    required this.image,
  });

  String nama;
  Color warna;
  String harga;
  String image;

  factory ProdukModel.fromJson(Map<String, dynamic> json) => ProdukModel(
        nama: json["nama"],
        warna: json["warna"],
        harga: json["harga"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "nama": nama,
        "warna": warna,
        "harga": harga,
        "image": image,
      };
}
