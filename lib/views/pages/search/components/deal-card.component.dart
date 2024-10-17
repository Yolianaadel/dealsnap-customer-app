import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DealCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String reviewsText;
  final String reserveText;
  final double discount;
  final String iconPath;
  final double rating;
  final void Function() onReservePressed;

  const DealCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.reviewsText,
    required this.reserveText,
    required this.discount,
    required this.iconPath,
    required this.rating,
    required this.onReservePressed,
  }) : super(key: key);

  Widget buildStarRating(double rating) {
    int fullStars = rating.floor();
    bool hasHalfStar = rating - fullStars > 0.5;
    int emptyStars = 5 - fullStars - (hasHalfStar ? 1 : 0);
    List<Widget> stars = [];

    for (int i = 0; i < fullStars; i++) {
      stars.add(SvgPicture.asset(
        'assets/icons/ic_star.svg',
        width: 14.0,
        height: 14.0,
      ));
      stars.add(SizedBox(width: 4.0));
    }

    if (hasHalfStar) {
      stars.add(SvgPicture.asset(
        'assets/icons/ic_star_half.svg',
        width: 14.0,
        height: 14.0,
      ));
      stars.add(SizedBox(width: 4.0));
    }

    for (int i = 0; i < emptyStars; i++) {
      stars.add(ColorFiltered(
        colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
        child: SvgPicture.asset(
          'assets/icons/ic_star.svg',
          width: 14.0,
          height: 14.0,
        ),
      ));
      stars.add(SizedBox(width: 4.0));
    }

    if (stars.isNotEmpty) {
      stars.removeLast();
    }

    return Row(children: stars);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 9.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${discount.toInt()}% Off at $title',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SvgPicture.asset(
                    iconPath,
                    width: 25.0,
                    height: 25.0,
                  ),
                ],
              ),

              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey[700],
                ),
              ),

              SizedBox(height: 10.0),

              Row(
                children: [
                  buildStarRating(rating),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    reviewsText,
                    style: TextStyle(
                      fontSize: 10.0, // تصغير حجم النص
                      color: Colors.grey[600],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: onReservePressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffe0e4ff),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                      minimumSize: Size(0, 30),
                    ),
                    child: Text(
                      reserveText,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
