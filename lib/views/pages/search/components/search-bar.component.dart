import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BarSearch extends StatelessWidget {
  final String hinttext;

  const BarSearch({super.key, required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        child: TextField(
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: hinttext,
            suffixIcon: Padding(
              padding: const EdgeInsets.all(11.0),
              child: SvgPicture.asset(
                'assets/icons/ic_search.svg',
                width: 15,
                height: 15,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}