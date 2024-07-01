import 'dart:math';

void main() {



final int userMoney = 0;
controlUserMoney(userMoney,0); //Fonksiyon çağırma
//müsterinin parasi varmı yok mu kontrol ettik. 

/* if(userMoney>0){
  print('parasi var');
}
else{
  print('parasi yok');
} */

//Bir müşteri daha geldi onu kontrol edelim.

final int user2Money = 5;
controlUserMoney(user2Money,5);

/* if(userMoney>0){
  print('parasi var');
}
else{
  print('parasi yok');
} */

/*Mesela 0 dan değilde 5 den büyük olduğunu kontrol etmek
istesek tek tek değiştirmemiz gerekecek. Bunu yapmak yerine fonksiyonları kullanabiliriz.*/ 

/* Yeni bir müşteri gelsin ve parası 50 tl olsun
parasını dolar yapmak istesin ve kaç dolar ettiğini merak ediyor.*/

  final newUserMoney = 50;
  
  //print(newUserMoney/13);

  int result = convertToDolar(newUserMoney);

  final newResult = convertToStandartDolar(100,dolarIndex: 13);
  final newResult2 = convertToStandartDolar(100);
  final newResult3 = convertToEuro(userMoney: 500);
  sayHello('Ali');

 }

void controlUserMoney(int money,int minimumValue){
 
  
  if(money>minimumValue){
  print('para var');
}
  else{
  print('para yok');
}

}

int convertToDolar(int userMoney){

  return userMoney ~/ 13;
}

int convertToStandartDolar(int userMoney, {int dolarIndex = 14}){
  return userMoney ~/ dolarIndex;
}

int convertToEuro({required int userMoney, int euroIndex = 14}){
  return userMoney ~/ euroIndex;
}

String sayHello(String name){
  return 'hello $name ';
}
