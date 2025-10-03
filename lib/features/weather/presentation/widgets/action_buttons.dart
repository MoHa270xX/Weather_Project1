import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:weather_project/features/weather/presentation/pages/Map_screen.dart';
import 'package:weather_project/features/weather/presentation/widgets/custom_text_feild.dart';


class ActionBottuns extends StatelessWidget {
  const ActionBottuns({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomActionButton(
          text: 'Search',
          onPressed: () async{
           final LatLng? selectedLocation = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MapScreen(mode: MapMode.search),
              ),
            );

            if (selectedLocation != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Selected Location: Lat: ${selectedLocation.latitude}, Lng: ${selectedLocation.longitude}',
                  ),
                ),
              );
            }
          },
          
               
        ),
        CustomActionButton(text: 'Drop Pin', onPressed: () {}),
        CustomActionButton(text: 'Draw Area', onPressed: () {}),
      ],
    );
  }
}
