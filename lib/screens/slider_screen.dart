import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  late double _slideValue = 100;
  late bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders & check'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
              activeColor: AppTheme.primary,
              min: 50,
              max: 400,
              value: _slideValue,
              onChanged: _sliderEnabled
                  ? (value) {
                      _slideValue = value;
                      setState(() {});
                    }
                  : null,
            ),
            SwitchListTile.adaptive(
              title: const Text('Activar Slider'),
              activeColor: AppTheme.primary,
              value: _sliderEnabled,
              onChanged: (value) => setState(() {
                _sliderEnabled = value;
              }),
            ),
            /* CheckboxListTile(
              value: _sliderEnabled,
              onChanged: (value) => setState(
                () {
                  _sliderEnabled = value ?? true;
                },
              ),
            ), */
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const AssetImage('assets/images/mario.png'),
                  fit: BoxFit.contain,
                  width: _slideValue,
                ),
              ),
            ),
          ],
        ));
  }
}
