import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class filter extends StatelessWidget {
  final String hinttext;

  const filter({super.key, required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: Color(0xff6B18FF),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: SvgPicture.asset(
            'assets/icons/ic_filter.svg',
            width: 20,
            height: 20,
          ),
        ),
      ),
      onPressed: () {
        showDraggableSheet(context);
      },
    );
  }

  void showDraggableSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.5,
          minChildSize: 0.3,
          maxChildSize: 0.85,
          expand: false,
          builder: (BuildContext context, ScrollController scrollController) {
            double _sliderValue = 10;

            return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return SingleChildScrollView(
                  controller: scrollController,
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            'Location',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold, // سمك الخط
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: TextField(
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              hintText: hinttext,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(
                                  'assets/icons/ic_map.svg',
                                  width: 24,
                                  height: 24,
                                  color: Color(0xff6B18FF),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'Discount Range',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${_sliderValue.round()}%',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              '100%',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Color(0xff6B18FF),
                            inactiveTrackColor: Color(0xffddcef8),
                            thumbColor: Color(0xff6B18FF),
                            overlayColor: Colors.purple.withOpacity(0.2),
                            trackHeight: 4.0,
                            thumbShape: CustomSliderThumbCircle(
                              thumbRadius: 15,
                              innerRadius: 7,
                            ),
                          ),
                          child: Slider(
                            value: _sliderValue,
                            min: 1,
                            max: 100,
                            label: _sliderValue.round().toString(),
                            onChanged: (double newValue) {
                              setState(() {
                                _sliderValue = newValue;
                              });
                            },
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'Deal Type',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Wrap(
                          spacing: 20.0, // Horizontal spacing between items
                          runSpacing: 10.0, // Vertical spacing between rows
                          children: [
                            CheckboxWithText('Flash Sale'),
                            CheckboxWithText('Clearance'),
                            CheckboxWithText('Limited Time'),
                            CheckboxWithText('Online Only'),
                            CheckboxWithText('In-store Only'),
                          ],
                        ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Clear filters'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:Color(0xffe5d6fd), // Background color
                          foregroundColor: Color(0xff6B18FF), // Text color
                          side: BorderSide(color: Color(0xffddcbfd), width: 1), // Border
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8), // Rounded corners
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        ),
                      ),
                      SizedBox(width: 10), // Reduced space between buttons
                      ElevatedButton(
                        onPressed: () {
                          // Action for the Save changes button
                          Navigator.pop(context);
                        },
                        child: Text('Save changes'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff6B18FF), // Background color
                          foregroundColor: Colors.white, // Text color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8), // Rounded corners
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                        ),
                      ),
                      ],
                    ),
                  ],
                ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}

class CheckboxWithText extends StatefulWidget {
  final String label;

  CheckboxWithText(this.label);

  @override
  _CheckboxWithTextState createState() => _CheckboxWithTextState();
}

class _CheckboxWithTextState extends State<CheckboxWithText> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Text(widget.label),
      ],
    );
  }
}

class CustomSliderThumbCircle extends SliderComponentShape {
  final double thumbRadius;
  final double innerRadius;

  CustomSliderThumbCircle({
    required this.thumbRadius,
    required this.innerRadius,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
      PaintingContext context,
      Offset center, {
        required Animation<double> activationAnimation,
        required Animation<double> enableAnimation,
        required bool isDiscrete,
        required TextPainter labelPainter,
        required RenderBox parentBox,
        required SliderThemeData sliderTheme,
        required TextDirection textDirection,
        required double value,
        required double textScaleFactor,
        required Size sizeWithOverflow,
      }) {
    final Canvas canvas = context.canvas;

    final Paint outerCirclePaint = Paint()
      ..color = sliderTheme.thumbColor!
      ..style = PaintingStyle.fill;

    final Paint innerCirclePaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    canvas.drawCircle(center, thumbRadius, outerCirclePaint);
    canvas.drawCircle(center, innerRadius, innerCirclePaint);
  }
}
