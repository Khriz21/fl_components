import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: <Widget>[
        const ListTile(
          leading: Icon(Icons.photo_album, color: AppTheme.primary),
          title: Text('Card 1'),
          subtitle: Text(
              'kjbdkjbqdkcb;sdjhbcjkhwdbcjhkvsjhcvqjdhvcjqdvcj;hdsvcj;vsdj;cvd;jcvsj;vdcjshvdcjhsvdcjvsdjcvsjdvcsjdvcjsvdcjvsdhcjvsdjhvcsjdhvcsjhdvcjhsvdcjvsdcvsdjvcsjdvcjshvdcjsvdcnvsdjhcvsdvcsvds'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Cancelar'),
              ),
              TextButton(onPressed: () {}, child: const Text('Ok')),
            ],
          ),
        )
      ],
    ));
  }
}
