import 'package:flutter/material.dart';
import 'package:kashkaar/config/colors.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class Utils {
  static List<Widget> modelBuilder<M>(
          List<M> models, Widget Function(int index, M model) builder) =>
      models
          .asMap()
          .map<int, Widget>(
              (index, model) => MapEntry(index, builder(index, model)))
          .values
          .toList();
}

class SliderLabelWidget extends StatefulWidget {
  const SliderLabelWidget({Key? key}) : super(key: key);

  @override
  _SliderLabelWidgetState createState() => _SliderLabelWidgetState();
}

class _SliderLabelWidgetState extends State<SliderLabelWidget> {
  RangeValues values = RangeValues(10, 70);
  RangeValues valuesBottom = RangeValues(0, 2);
  final labels = ['0', '100 KM'];
  double _value = 40.0;

  final double min = 0;
  final double max = 100;

  @override
  Widget build(BuildContext context) => SliderTheme(
      data: SliderTheme.of(context).copyWith(
          activeTrackColor: MyColors.rust,
          inactiveTrackColor: Color(0xffA4BE7B),
          
          trackShape: RoundedRectSliderTrackShape(),
          trackHeight: 1.9,
          
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6.0,elevation: 2),
          thumbColor: MyColors.primary2   ,
          overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
          activeTickMarkColor: Colors.transparent,
          inactiveTickMarkColor: Colors.transparent,
          valueIndicatorColor: Colors.transparent,
          valueIndicatorTextStyle: TextStyle(color: Colors.transparent,fontSize: 0.sp)),
      child: Stack(children: [
        
        Slider(
          
            value: _value,
            onChanged: (value) {
              null;
            },
            divisions: 10,
            label: '$_value\n'+"radius",
            min: 0,
            max: 100)
      ]));

  Widget buildSliderTopLabel() {
    final labels = ['0', '100'];
    double value = 40.0;

    const double min = 0;
    const double max = 100;

    return Column(mainAxisSize: MainAxisSize.min, children: [
      Container(
          margin: EdgeInsets.symmetric(horizontal: 18),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: Utils.modelBuilder(labels, (index, label) {
                const selectedColor = Colors.black;
                final unselectedColor = Colors.black.withOpacity(0.3);
                final isSelected =
                    index >= valuesBottom.start && index <= valuesBottom.end;
                final color = isSelected ? selectedColor : unselectedColor;

                return buildLabel(label: label.toString(), color: Colors.white);
              }))),
      Slider(
          value: value,
          onChanged: (value) {
            setState(() {
              value = value;
            });
          },
          divisions: 10,
          label: '$value',
          min: 0,
          max: 100)
    ]);
  }

  Widget buildLabel({
    required String label,
    required Color color,
  }) =>
      Text(label,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold)
              .copyWith(color: color));

  Widget buildSideLabel(double value) => SizedBox(
      width: 30,
      child: Text(value.round().toString(),
          style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center));
}
