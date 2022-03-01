import 'dart:io';
class hotel { 
  late String typeofroom ; 
  late int price;  

  hotel(){ 
    print('what type of Room do your want ?');
    print('single room costs 50\$\$ per night \n double room costs 75\$\$ per night\ntrible costs 100\$\$ per night \n suite costs 250\$\$per night ');
    var s = stdin.readLineSync();
    if (s=='ُsingle')
       typeofroom='ُsingle';
    else if (s=='double')
       typeofroom='double';
    else if (s=='trible')
       typeofroom='trible';
    else if (s=='suite' )
       typeofroom='suite';
    else 
     {
      print('Enter a valid value');
        hotel(); 
    }
  }
  void priceset (){
    if (typeofroom=='ُsingle')
      price=50 ; 
    else if (typeofroom=='double')
      price=75 ; 
    else if (typeofroom=='trible')
      price=100 ; 
    else if (typeofroom=='suite')
      price=250; 
  }
  void display (){
    print(' You want $typeofroom room and it will cost $price ');

  }
  void confirm (){
    print('Do you confirm ?? ');
    var s = stdin.readLineSync(); 
    if (s=='confirm'||s=='confirmed'|| s=='yes' )
       print("your room is booked ") ; 
    else 
       print('Operation cancelled') ; 
    
  }

}



