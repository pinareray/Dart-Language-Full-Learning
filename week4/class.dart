import 'model/user_model.dart';

void main() {
  //musteri adi var,parası var,yasi var.

  final int customerMoney = 50;
  final String customerName = "Jay";
  final int customerAge = 21;
  
  //bu müsterinin yasi 10 dan büyükse işlem yap.
  //1.yol iflerle yapabiliriz. 2. yol fonksiyonları kullanabiliriz ama daha etkili olarak
  // classlar var.
  if (customerAge > 10) {
    print('Alisveris yapabiilirsiniz');
  }
  else {
    print('alisveris yapamayiz');
  }

  /*Yeni müsteri geliyor ve yine aynı alanlar. Sürekli aynı şeyi yapmak yorar.
  Her yeni değişiklik kodlarda tek tek uğraşmayı gerektirir ve bunu çok verili bir koda 
  uygulamak daha zor olur. Class kullanırız. */
/* 

/*Dart dili baştan sona nesneleri koruyan bir dildir.Dartta tanımladığını bir şeye
herhangi bir değer atamazsanız dart buna null atar. Eğer bir nesne kullanıyorsak bunları 
nasıl kullanacağımı söylemek zorundayız ve ona değer vermeliyiz. Değer vermiyorsak int den
 sonra soru işareti kullanmalıyız.Soru işaretini
datanın gelip gelmeyeceğinden emin olmadığımız durumlarda kullanırız.*/
   */

  int? newMoney;
  if(newMoney != null){
    print(newMoney + 50);
  }
  else{
    print(10+10);
  }

/*Bankaya 3 müşteri gelsin. Birinin hesabı olmasın birinin 0 diğerinin 100 tl parası olsun
hesabı olmayana hesap aç, 0 tl si olanı kov, 100 tl si olana hoşgeldin de */

  List<int?> customersMoneys = [100,null,0];

  for (var item in customersMoneys) {
    if (item != null) {
      if(item > 0){
        print('hosgeldiniz');
      }
      else{
        print('byy');
      }
    }
    else{
      print('Hesap acalim.');
    }

     bool result = controlMoney(item) == null ? false : true;
     print(result);
  }

   print('--------'*10);

   int customerMoneyX = 15;
   User user1 = User('Jay', 15, age:21, city:'Hiddenfield', id:'cc');
   //User user2 = User('Anabella', 15, null,null);
   
   final user3 = User('Luna', 159, age: 13, id:'12');
   print(user3.userCode);

   print(user1.name);


   //müşteri son gelen kişi İstanbullu ise kampanya yapsın
  
   if (user3.city == null) {
     print('Sehir bilgisi verilmemis');
   }
   else{
    if (user3.city!.isEmpty) {
      print('okok');
    }

    if(user3.city == 'istanbul'){
      print('tebrikler kazandiniz');
    }
   }


  //müsteri id si 12 olana indirim yap.
  
  if (user3.isSpecialUser('12')) {
    user3.money +=5; //Bunu yapamayız çünkü money'e final demiştik. Gidip final'ı kaldıralım.
    print('para eklendi');
    
  }


  User newUser2 = User('vb', 15, id: '10');
  newUser2.money += 5;
  newUser2.money = 5;

  print(newUser2.toString()); //Çıktısı: İnstance of 'user'
  
   
}

//Yeni bir method olsun ve hesabı olmayanları ve parası olmayanları yok sayalım. 

int? controlMoney(int? money) {

  if(money != null && money > 0){
    return money;
  }
  else{
    return null;
  } //Bu else kısmı olmasa da dart null dönecekti ama okunma açısından güzel dursun diye yaptık

 /*  if (money == null || money == 0) {
    return null; //Bunu yapıyorsak int in yanına ? koymalıyız.
  } */
  
}

void controlCustomerAge(int value){
  if (value > 10) {
    print('alisveris yapabilirsiniz');
  }
  else{
    print('alisveris yapamayiz');
  }

}