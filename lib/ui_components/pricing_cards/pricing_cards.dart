import 'package:flutter/material.dart';

import 'All Pricing Cards/pricing_cards1.dart';


class PricingCardScreen extends StatelessWidget {
  PricingCardScreen({super.key});

  final List<Widget> pricingCards = [
    const PricingCard1(
      tier: 'FREE',
      supportingText:
          'For those who want to try our services with no commitment',
      price: '\$0',
      period: 'month',
      details: [
        'Easily receive new glasses on a regular basis',
        'More cost-effective than buying glasses individually',
      ],
      cardColor: Color(0xff0f172a),
      textColor: Colors.white,
      buttonColor: Color(0xff00c2cb),
      buttonTextColor: Color(0xff0f172a),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: pricingCards[index],
          );
        },
        itemCount: pricingCards.length,
      ),
    );
  }
}