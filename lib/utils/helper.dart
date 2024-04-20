import 'dart:convert';

import 'package:deposits_ui_kit_v2/utils/model/city_model.dart';
import 'package:deposits_ui_kit_v2/utils/model/country_model.dart';
import 'package:deposits_ui_kit_v2/utils/model/state_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

getCountry() async {
  String link = 'packages/deposits_ui_kit_v2/assets/custom_json/country.json';
  var jsonString = await rootBundle.loadString(link);
  List<dynamic> body = json.decode(jsonString);

  var countryList =
      body.map((dynamic item) => CountryModel.fromJson(item)).toList();

  for (var i = 0; i < countryList.length; i++) {}

  return countryList;
}

getCountryOld() async {
  String link = 'packages/deposits_ui_kit_v2/assets/custom_json/country.json';
  var jsonString = await rootBundle.loadString(link);
  List<dynamic> body = json.decode(jsonString);

  var countryList =
      body.map((dynamic item) => CountryModel.fromJson(item)).toList();

  for (var i = 0; i < countryList.length; i++) {}

  return countryList;
}

getState(String countryId) async {
  List<StateModel> subStateList = [];
  String link = 'packages/deposits_ui_kit_v2/assets/custom_json/country.json';
  var jsonString = await rootBundle.loadString(link);
  List<dynamic> body = json.decode(jsonString);

  List stateList = [];
  subStateList = body.map((dynamic item) => StateModel.fromJson(item)).toList();
  for (var element in subStateList) {
    if (element.countryId == countryId) {
      stateList.add(element);
    }
  }

  return stateList;
}

getCity(String stateId) async {
  List<CityModel> subCityList = [];
  String link = 'packages/deposits_ui_kit_v2/assets/custom_json/city.json';
  var jsonString = await rootBundle.loadString(link);
  List<dynamic> body = json.decode(jsonString);

  List cityList = [];
  subCityList = body.map((dynamic item) => CityModel.fromJson(item)).toList();
  for (var element in subCityList) {
    if (element.stateId == stateId) {
      cityList.add(element);
    }
  }
  return cityList;
}

String colorToString(Color color) {
  var colorString = color
      .toString()
      .replaceAll("Color(0xff", "#")
      .replaceAll(")", "")
      .toUpperCase();

  return colorString;
}

Color darkenColor(Color color, [double amount = .1]) {
  assert(amount >= 0 && amount <= 1);

  final hsl = HSLColor.fromColor(color);
  final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

  return hslDark.toColor();
}

Color lightenColor(Color color, [double amount = .1]) {
  assert(amount >= 0 && amount <= 1);

  final hsl = HSLColor.fromColor(color);
  final hslLight = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

  return hslLight.toColor();
}
