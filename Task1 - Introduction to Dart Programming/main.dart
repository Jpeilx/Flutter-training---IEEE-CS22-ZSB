import 'dart:io';
import './Hotel.dart';
import './Airline.dart';
void main (){
  print('Wdelcome to Turkish Airline And Istanbul Airport Hotel ');
  print('what do you want ?? \nBook a room or a Flight!');
  var s = stdin.readLineSync();
  if (s=='flight'){
      var a = new airline();
      a.priceset();
      a.display();
      a.confirm();
  }
  else if (s=='room') {
    var a = new hotel () ; 
    a.priceset() ; 
    a.display();
    a.confirm();



  }

