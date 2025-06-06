import 'package:geolocator/geolocator.dart';

Future<Position> getLocation() async{
  LocationPermission permission;

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied){
    permission = await Geolocator.requestPermission();
    if(permission == LocationPermission.denied){
      return Future.error('Location Permission denied');
    }
  }
  
  if( permission == LocationPermission.deniedForever){
    return Future.error('Location permission denied forever ');
  }
  return await Geolocator.getCurrentPosition();
}