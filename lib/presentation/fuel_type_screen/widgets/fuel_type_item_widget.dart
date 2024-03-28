import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;
class Fuel {
  final String id;
  final String name;

  Fuel({required this.id, required this.name});

  factory Fuel.fromJson(Map<String, dynamic> json) {
    return Fuel(
      id: json['_id'],
      name: json['name'],
    );
  }
}

Future<List<Fuel>> fetchFuelTypes() async {
  final response = await http.get(Uri.parse('https://ctfl8gltri.execute-api.ap-south-1.amazonaws.com/dev/api/v1/fuel/get'));

  if (response.statusCode == 200) {
    List<dynamic> fuelsJson = jsonDecode(response.body)['Fuels'];
    return fuelsJson.map((json) => Fuel.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load fuel types');
  }
}


class FuelTypeItemWidget extends StatefulWidget {
  const FuelTypeItemWidget({Key? key}) : super(key: key);

  @override
  _FuelTypeItemWidgetState createState() => _FuelTypeItemWidgetState();
}

class _FuelTypeItemWidgetState extends State<FuelTypeItemWidget> {
  late Future<List<Fuel>> futureFuels;

  @override
  void initState() {
    super.initState();
    futureFuels = fetchFuelTypes();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Fuel>>(
      future: futureFuels,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Text("Error: ${snapshot.error}");
        } else if (snapshot.hasData) {
          List<Fuel> fuels = snapshot.data!;
          // Use GridView.builder
          return Container(
            height: 400,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Number of columns
                crossAxisSpacing: 4.0, // Spacing between columns
                mainAxisSpacing: 4.0, // Spacing between rows
              ),
              itemCount: fuels.length,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  child: Text(fuels[index].name,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[100],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin: EdgeInsets.all(4),
                );
              },
            ),
          );
        } else {
          return Text("No data");
        }
      },
    );
  }
}
