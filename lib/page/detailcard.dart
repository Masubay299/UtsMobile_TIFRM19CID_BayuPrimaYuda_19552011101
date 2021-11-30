import 'package:flutter/material.dart';
import 'package:uts_bayuprimayuda_19552011101_tifrm19cid/page/home.dart';

class Detail extends StatefulWidget {
  Detail({Key? key, required this.card}) : super(key: key);
  ProdukModel card;
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Center(
            child: Image.asset('assets/fujifilm-banner.png', height: 20)),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: 30),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: Image.asset(widget.card.image, height: 190)),
                    Padding(
                      padding: const EdgeInsets.only(top: 35.0, left: 15),
                      child: Row(
                        children: [
                          Text(
                            "Instax ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Mini " + widget.card.nama + " 7+",
                            style: TextStyle(
                                color: widget.card.warna,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, top: 8, right: 15),
                      child: Text(
                          'Be real and fun with the INSTAX MINI 7+. Cool design, colorful and compact, this instant camera is fun and easy to use.Point and shoot and give your day some fun!',
                          textAlign: TextAlign.justify),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, top: 8, right: 15),
                      child: Text(
                        "Point & Shoot",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, top: 8, right: 15),
                      child: Text(
                          'The Mini 7+ is easy to use! Simply point and shoot! With its exposure control adjustment and 60mm fixed-focus lens, the Mini 7+ makes it easy for you to be creative and live in the moment.',
                          textAlign: TextAlign.justify),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, top: 8, right: 15),
                      child: Text(
                        "Mini But With Full-Size Memories",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, top: 8, right: 15),
                      child: Text(
                          'Pop it in your wallet, stick it to your wall – the INSTAX Mini film brings you instant 2 x 3 sized photos you can show and tell. \nUsing professional high-quality film technology (as you’d expect from Fujifilm), your festival frolicking, sun worshipping, crowd surfing memories that you print will transport you right back into that moment.',
                          textAlign: TextAlign.justify),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, top: 8, right: 15),
                      child: Text(
                        "Mini Film",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, top: 8, right: 15),
                      child: Text(
                          'Mini moments with maximum impact. What’s your next mini moment?',
                          textAlign: TextAlign.justify),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, top: 8, right: 15),
                      child: Text(
                        "Plenty of Great Color Choices",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, top: 8, right: 15),
                      child: Text(
                          'Available in five awesome colors: Lavender, Seafoam Green, Coral, Light Pink & Light Blue',
                          textAlign: TextAlign.justify),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, top: 8, right: 15),
                      child: Text(
                        "The Mini 7+ Has Your Back!",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, top: 8, right: 15),
                      child: Text(
                          'Depending upon the weather conditions, you can easily control brightness to obtain a great picture.',
                          textAlign: TextAlign.justify),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, top: 8, right: 15),
                      child: Text(
                        "Fun All The Time!",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, top: 8, right: 15),
                      child: Text(
                          'Live in the moment and enjoy your Mini 7+, and give your day some instant fun!',
                          textAlign: TextAlign.justify),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
              padding: new EdgeInsets.fromLTRB(30, 0, 30, 30),
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$ " + widget.card.harga,
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Buy',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: widget.card.warna,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15), // <-- Radius
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
