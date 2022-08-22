import 'package:fl_commponents/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders && Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            // divisions: 10,
            value: _sliderValue,
            onChanged: _sliderEnabled ? (value){
              setState((){
                _sliderValue = value;
              });
            }
            : null
          ),
          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: Text('Hablitar slider'),
            value: _sliderEnabled,
            onChanged: (value) => {
              setState(() {_sliderEnabled = value;})
            }
          ),
          const AboutListTile(),
          const SizedBox(height: 50,),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://instagram.fbog4-1.fna.fbcdn.net/v/t51.2885-15/185819036_149165543888376_3744054609224505559_n.jpg?stp=dst-jpg_e35_p750x750_sh0.08&_nc_ht=instagram.fbog4-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=zWMD7u4vij8AX8yI2nc&tn=ftB8nw7AR-xlpG7S&edm=ALQROFkBAAAA&ccb=7-5&ig_cache_key=MjU3NDU0NDA5MjY2OTk1NjYzOA%3D%3D.2-ccb7-5&oh=00_AT-AbbI9kNxjmvBnGoNPatkslUSrks3u7RSPpEswmkZpdw&oe=630A0A72&_nc_sid=30a2ef'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
          const SizedBox(height: 50,),
        ],
      ),
    );
  }
}
