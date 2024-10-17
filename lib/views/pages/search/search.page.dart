import 'package:flutter/material.dart';
import 'components/filter.component.dart';
import 'components/search-bar.component.dart';
import 'components/deal-card.component.dart';
import 'package:dealsnap_customer_app/views/ui/app.ui.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppUI.colorBackground,
      appBar: AppBar(
        title: Row(
          children: [
            filter(hinttext: 'New York, USA'),
            BarSearch(hinttext: 'Search deals'),
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Global deals',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          DealCard(
            title: 'Off at Local Restaurants',
            subtitle: 'Gourmet Dining',
            reviewsText: 'Based on 120 reviews',
            reserveText: 'Reserve',
            discount: 20,
            iconPath: 'assets/icons/ic_restaurant.svg',
            rating: 4,
            onReservePressed: () {
              print('Reserve button pressed');
            },
          ),
          DealCard(
            title: 'MQR for offices',
            subtitle: 'MQR',
            reviewsText: 'Based on 88 reviews',
            reserveText: 'Reserve',
            discount: 18,
            iconPath: 'assets/icons/ic_company.svg',
            rating: 4,
            onReservePressed: () {
              print('Reserve button pressed');
            },
          ),
          DealCard(
            title: 'Off at Local Restaurants',
            subtitle: "MacDonald's Restaurants",
            reviewsText: 'Based on 22 reviews',
            reserveText: 'Reserve',
            discount: 14,
            iconPath: 'assets/icons/ic_restaurant.svg',
            rating: 3,
            onReservePressed: () {
              print('Reserve button pressed');
            },
          ),
          DealCard(
            title: 'MQR for offices',
            subtitle: 'MQR',
            reviewsText: 'Based on 88 reviews',
            reserveText: 'Reserve',
            discount: 18,
            iconPath: 'assets/icons/ic_company.svg',
            rating: 4,
            onReservePressed: () {
              print('Reserve button pressed');
            },
          ),
          DealCard(
            title: 'Off at Local Restaurants',
            subtitle: "MacDonald's Restaurants",
            reviewsText: 'Based on 22 reviews',
            reserveText: 'Reserve',
            discount: 14,
            iconPath: 'assets/icons/ic_restaurant.svg',
            rating: 3,
            onReservePressed: () {
              print('Reserve button pressed');
            },
          ),
        ],
      ),
    );
  }
}
