import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SearchScreenController extends GetxController {
  final RxInt selectedRating = 0.obs;
   final List<Map<Widget?, String>> ratingList = [
    { SizedBox(): 'All'},
    {SizedBox(): 'Recommended'},
    {Icon(Icons.star_border_rounded): '5.0'},
    {Icon(Icons.star_border_rounded): '4.0'},
    {Icon(Icons.star_border_rounded): '3.0'},
    {Icon(Icons.star_border_rounded): '2.0'},
    {Icon(Icons.star_border_rounded): '1.0'},
  ];
}
