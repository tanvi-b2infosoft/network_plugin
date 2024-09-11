// lib/data_fetcher.dart

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> fetchData() async {
  final url = 'https://truyodevelopmentcdn.truyo.com/json/a5e122c55de83fe3571e061745c1ba25.json';

  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final topicDetails = data['topicDetails'] as List<dynamic>;
      final toggleSettings = data['toggleSettings'] as Map<String, dynamic>;
      final topics = topicDetails.map<Map<String, dynamic>>((topic) {
        return {
          'topicName': topic['topicName'],
          'toggledOn': topic['toggledOn'],
          'topicDescription': topic['topicDescription'],
        };
      }).toList();
      final toggleStyle = {
        "toggleOnText": toggleSettings['toggleOnText'],
        "toggleOffText": toggleSettings['toggleOffText'],
        "toggleOnColor": Color(int.parse(toggleSettings['toggleOnColor'].replaceFirst('#', '0xFF'))),
        "toggleOffColor": Color(int.parse(toggleSettings['toggleOffColor'].replaceFirst('#', '0xFF'))),
        "toggleOnTextColor": Color(int.parse(toggleSettings['toggleOnTextColor'].replaceFirst('#', '0xFF'))),
        "toggleOffTextColor": Color(int.parse(toggleSettings['toggleOffTextColor'].replaceFirst('#', '0xFF'))),
        "fontName": toggleSettings['fontName'],
        "fontSize": double.tryParse(toggleSettings['fontSize'].toString()) ?? 12.0, // Default to 12.0 if parsing fails
      };

      return {
        'topics': topics,
        'toggleStyle': toggleStyle,
      };
    } else {
      throw Exception('Failed to load data');
    }
  } catch (error) {
    throw Exception('Error: $error');
  }
}
