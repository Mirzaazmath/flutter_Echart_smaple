import 'package:flutter/material.dart';
import 'package:flutter_echarts/flutter_echarts.dart';

import 'liquidstrip.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _value=0.0;
  double _slidervalue = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
      child:
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 100,),
              SizedBox(
                child: Echarts(
                  extensions: [liquidScript],
                  option: '''
                          {
                            series: [{
                                type: 'liquidFill',
                                data: [$_value]
                            }]
                          }
                        ''',
                ),
                width: 300,
                height: 250,
              ),
              Slider(
                min: 0,
                max: 100,
                value: _slidervalue,
                onChanged: (value) {
                  if(value>10  && value<20){
                    setState(() {
                      _value=0.1;
                    });
                  }
                  else if(value>20 && value<30 ){
                    setState(() {
                      _value=0.2;
                    });
                  }
                  else if(value>30 && value<40){
                    setState(() {
                      _value=0.3;
                    });
                  }
                  else if(value>40 && value<50){
                    setState(() {
                      _value=0.4;
                    });
                  }
                  else if(value>50 && value<60){
                    setState(() {
                      _value=0.5;
                    });
                  }
                  else if(value>60 && value<70){
                    setState(() {
                      _value=0.6;
                    });
                  }
                  else if(value>70 && value<80){
                    setState(() {
                      _value=0.7;
                    });
                  }
                  else if(value>80 && value<90){
                    setState(() {
                      _value=0.8;
                    });
                  }
                  else if(value>90 && value<100){
                    setState(() {
                      _value=0.9;
                    });
                  }
                  else if(value==100){
                    setState(() {
                      _value=1;
                    });
                  }

                  setState(() {
                    _slidervalue = value;
                  });
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}

