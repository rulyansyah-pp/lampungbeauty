import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lampungbeauty/config/asset.dart';
import 'package:lampungbeauty/screen/admin/list_mahasiswa.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Asset.colorPrimary,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Image(
              image: NetworkImage(
                  "https://1.bp.blogspot.com/-y3ZHATPFhOE/XJxtNPwTjCI/AAAAAAAABG4/KvcbVj8HTFMw-a-fcWYCfD2n-PoVLqF7wCLcBGAs/s1600/universitas-teknokrat-indonesia.jpg"),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 25, bottom: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton('Mahasiswa', Icons.people, 0),
                    IconButton('Menu 2', Icons.mail, 0),
                    IconButton('Menu 3', Icons.folder, 0),
                    IconButton('Menu 4', Icons.person_add_alt_1, 0),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton('Menu 5', Icons.account_balance_wallet, 0),
                    IconButton('Menu 6', Icons.edit_road_outlined, 0),
                    IconButton('Logout', Icons.logout_outlined, 99),
                    IconButton('Lainnya', Icons.important_devices_outlined, 0),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10,
            ),
            child: Text(
              "Berita Terkini",
              style: TextStyle(
                color: Asset.colorPrimaryDark,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            alignment: Alignment.topLeft,
          ),
          SizedBox(
            height: 170,
            child: ListView(
              children: [
                CarouselSlider(
                  items: [
                    BeritaTerkini(
                      'https://asset-2.tstatic.net/lampung/foto/bank/images/seminar-teknologi-dibidang-wirausaha-digital.jpg',
                      'Universitas Teknokrat Ajak Generasi Z se-Lampung Menjadi Digitalpreneur',
                      '24 Februari 2019',
                    ),
                    BeritaTerkini(
                      'https://asset-2.tstatic.net/lampung/foto/bank/images/teknokrat-demonstrasi-mobil-listrik.jpg',
                      'judul 2',
                      'tanggal 2',
                    ),
                    BeritaTerkini(
                      'https://lampost.co/microsite/teknokrat/wp-content/uploads/sites/9/2023/05/juara-350x250-1.jpg',
                      'judul 3',
                      'tanggal 3',
                    ),
                    BeritaTerkini(
                      'https://lampost.co/microsite/teknokrat/wp-content/uploads/sites/9/2023/06/pks-uti-350x250-1.jpg',
                      'Universitas Teknokrat Indonesia Teker Kerja Sama Program Pertukaran Mahasiswa Merdeka Batch 3',
                      '5 maret 2024',
                    ),
                    BeritaTerkini(
                      'https://lampost.co/microsite/teknokrat/wp-content/uploads/sites/9/2023/07/tekno-350x250-1.jpg',
                      'Lulusan Universitas Teknokrat Indonesia Cepat Diserap Dunia Kerja',
                      '15 maret 2024',
                    ),
                  ],
                  options: CarouselOptions(
                    height: 170,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class IconButton extends StatelessWidget {
  final String nameLabel;
  final IconData iconLabel;
  final int index;

  IconButton(this.nameLabel, this.iconLabel, this.index);

  List<Map> _fragment = [
    {'title': 'Data Mahasiswa', 'view': ListMahasiswa()},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // margin: EdgeInsets.only(bottom: 5),
            child: Material(
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => _fragment[index]['view'],
                    ),
                  );
                },
                child: Container(
                  // margin: EdgeInsets.all(5),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Asset.colorPrimaryDark,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Center(
                    child: Stack(
                      children: [
                        Icon(
                          iconLabel,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Text(
              nameLabel,
              style: TextStyle(fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}

class BeritaTerkini extends StatelessWidget {
  final String img;
  final String judul;
  final String tanggal;

  BeritaTerkini(this.img, this.judul, this.tanggal);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  image: NetworkImage(img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient: LinearGradient(
                  colors: [
                    Asset.colorPrimaryDark,
                    Colors.transparent,
                  ],
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter,
                  stops: [0.1, 0.9],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    judul,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    tanggal,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      // alignment: Alignment(1, 1),
    );
  }
}
