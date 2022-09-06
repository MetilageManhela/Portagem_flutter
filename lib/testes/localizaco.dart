//import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:geocode/geocode.dart';
import 'package:location/location.dart';
import 'package:geocoding/geocoding.dart' as geocoding;

class Homeee extends StatefulWidget{
  
  @override
  _HomeeeState createState() => _HomeeeState();
}

class _HomeeeState extends State<Homeee> {
  var _cidade="";
  var _rua="";
  var _provincia="";
  var _avenida="";
  var _bairro="";
  late LocationData _locationData;
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
          appBar: AppBar( 
              title: Text("Turn On GPS in Flutter"),
              backgroundColor: Colors.redAccent,
          ),
          body: Container( 
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children:[

                const Text("Provincia",style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 28),),
                Text(_provincia, style: const TextStyle(
                fontStyle: FontStyle.normal,fontSize: 28),),

                 Text("Rua"),
                 Text(_rua),

                 Text("Avenida"),
                 Text(_avenida),

                 Text("Bairro"),
                 Text(_bairro),
                 
                  ElevatedButton(
                    onPressed: () async {
                        Location location = new Location();
                        bool ison = await location.serviceEnabled(); 
                        if (!ison) { //if defvice is off
                          bool isturnedon = await location.requestService();
                          if (isturnedon) {
                            _locationData = await location.getLocation();
                             print("GPS device is turned ON");
                              print(_locationData.altitude);
                          }else{
                             print("GPS Device is still OFF");
                          }
                        }else{
                            _locationData = await location.getLocation();
                          //  print(_locationData.latitude);
                          //  print(_locationData.longitude);
                          //  List<geocoding.Location> locations = await geocoding.locationFromAddress("Gronausestraat 710, Enschede");
                           List<geocoding.Placemark> placemarks = await geocoding.placemarkFromCoordinates(-25.9734367, 32.5902178);
                           geocoding.Placemark place = placemarks[3];
                            print(place.toString());
                            setState(() {
                              _provincia=place.country;
                              _cidade=place.locality;
                              _rua=place.country;
                              _avenida=place.subThoroughfare;
                              _bairro=place.subAdministrativeArea;
                              });
                         
                        }
                    }, 
                    child: Text("Ligar GPS | Pegar Localizacao")
                  ),

                  // ElevatedButton(
                  //   onPressed: () async {
                  //      AppSettings.openLocationSettings();
                  //   }, 
                  //   child: Text("Turn On GPS | App Setting Package")
                  // )
              ]
            )
          ),
           
       );
  }
}