import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/banner_view.dart';
import 'package:flutter_application_1/widgets/category_view.dart';
import 'package:flutter_application_1/widgets/popular.dart';
import 'package:flutter_application_1/models/popular.dart';

class HomeP1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(PopularRow.getSpotlightRestaurants());
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Offerbannerview(),
                      CategoryView(),

                     for (var i = 0; i < PopularRow.getSpotlightRestaurants().length; i++)
                      PopularItem(restaurant : PopularRow.getSpotlightRestaurants()[i][0]),
                     for (var i = 0; i < PopularRow.getSpotlightRestaurants().length; i++)
                      PopularItem(restaurant : PopularRow.getSpotlightRestaurants()[i][1]),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
