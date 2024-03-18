import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Blog',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Blog İçeriği burada olacak. Blog İçeriği burada olacak. Blog İçeriği burada olacak. Blog İçeriği burada olacak.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            // Filtreleme alanı
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width *
                        0.5, // Genişlik ayarı
                    child: DropdownButton<String>(
                      isExpanded:
                          true, // Bu, DropDownButton'ın yatay olarak tamamen genişlemesini sağlar
                      hint: Text('Filtrele'),
                      onChanged: (String? newValue) {
                        // Filtreleme işlemleri burada
                        print('Filtre: $newValue');
                      },
                      items: <String>['Sağlık', 'Spor', 'Diyet', 'Oruç']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            // Kartlar
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          KartDetaySayfasi(title: 'Kart 1 Detayı')),
                );
              },
              child: buildCard(
                  'Bu bir karttır. Kart 1 için özel içerik burada yer alacak.'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          KartDetaySayfasi(title: 'Kart 2 Detayı')),
                );
              },
              child: buildCard(
                  'Bu bir karttır. Kart 2 için özel içerik burada yer alacak.'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          KartDetaySayfasi(title: 'Kart 3 Detayı')),
                );
              },
              child: buildCard(
                  'Bu bir karttır. Kart 3 için özel içerik burada yer alacak.'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard(String content) {
    return Container(
      height: 200,
      child: Container(
        color: Colors.white,
        child: Card(    
          color: Colors.white,
          elevation: 10, 
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          margin: EdgeInsets.all(16),
          child: Center(
            child: Text(
              content,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class KartDetaySayfasi extends StatefulWidget {
  final String title;

  KartDetaySayfasi({required this.title});

  @override
  _KartDetaySayfasiState createState() => _KartDetaySayfasiState();
}

class _KartDetaySayfasiState extends State<KartDetaySayfasi> {
  bool _liked = false;

  void _toggleLike() {
    setState(() {
      _liked = !_liked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                margin: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Kart detayı burada yer alacak. Bu kartın özel detayları burada gösterilecek.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleLike,
        child: Icon(_liked ? Icons.favorite : Icons.favorite_border),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: BlogPage(),
  ));
}
