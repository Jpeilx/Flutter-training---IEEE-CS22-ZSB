import 'dart:io';
class airline {
  late String destination ; 
  late String typeofticket ; 
  late int price; 
  airline(){
    print ('Write Down your distination ');
    var v = stdin.readLineSync();
    this.destination=v.toString() ; 
    print('what type of Ticket do your want ?');
    print('Economy Ticket costs 100\$\$\nPremium Economy Ticket costs 200\$\$\nBusiness Ticket costs 500\$\$');
    var s = stdin.readLineSync();
    if (s=='ُEconomy'||s=='ُeconomy')
       typeofticket='ُEconomy';
    else if (s=='Premium Economy'||s=='premium economy')
       typeofticket='Premium Economy';
    else if (s=='Business'||s=='business')
       typeofticket='Business';
    else {
      print('Enter a valid value');
        airline(); 
    }
  }
  void priceset (){
    if (typeofticket=='ُEconomy')
      price=100 ; 
    else if (typeofticket=='Premium Economy')
      price=200 ; 
    else if (typeofticket=='Business')
      price=500 ; 
  }
  void display (){
    print('Your Ticket from Istanbul Airport to $destination\nYour plane will take off 1 AM \n You book $typeofticket Ticket with price $price . ');

  }
  void confirm (){
    print('Do you confirm ?? ');
    var s = stdin.readLineSync(); 
    if (s=='confirm'||s=='confirmed'|| s=='yes' )
       print("your ticket is booked ") ; 
    else 
       print('Operation cancelled') ; 
    
  }

}
