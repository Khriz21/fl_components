import 'package:fl_components/widgets/custom_card_image.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late List myImages = [
      {
        'title': 'Paisaje',
        'image':
            'https://c4.wallpaperflare.com/wallpaper/911/492/963/arbol-naturaleza-paisajes-prado-wallpaper-preview.jpg'
      },
      {
        'title': 'Hermoso Bosque',
        'image':
            'https://visualelsewhere.files.wordpress.com/2020/08/23d22cd6-0f3e-4b8a-81cf-fa47502511c2.jpg'
      },
      {
        'title': null,
        'image':
            'https://www.xtrafondos.com/wallpapers/diseno-de-paisaje-del-espacio-5771.jpg'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarjetas'),
      ),
      body: ListView.builder(
        itemCount: myImages.length,
        itemBuilder: ((context, i) => Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                children: <Widget>[
                  CustomCardImage(
                    urlImage: myImages[i]['image'],
                    name: myImages[i]['title'],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
