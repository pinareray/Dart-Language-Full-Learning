void main() {
  

  Map<String, int> users = {'ahmet':20, 'mehmet':30 };

  //Ahmet'in parasi ne kadar?
  print('ahmetin parasi ${users['ahmet']}');

  //Kimler var elimizde?
for (var item in users.keys) {
  print('${item}-${users[item]}');
}

for (var i = 0; i < users.length; i++) {
  print('${users.keys.elementAt(i)} - ${users.values.elementAt(i)}');
}
//Yukarıdaki iki for döngüsüde aynı şeyleri verir. 

/*Bankada her müşterinin birden fazla hesabı var diyelim. Bu hesapları kontorol
edelim ve herhangi bir hesap da 150 tl den fazla varsa 'krediniz hazır' diyelim. */
 print('---------------');
final Map<String, List<int>> vbBank = { //final dediğimiz için vbbank değişmez ama içerisindeki değerleri değiştirebiliriz.
  'ahmet': [100,300,200]
};
  vbBank['mehmet'] = [30,50];
  vbBank['veli'] = [30];

  for (var item in vbBank.keys) {
      //1. forda bankanın tüm elemanları

      for (var money in vbBank[item]!) {
        //2. for da kullanıcının hesapları
        if (money>150) {
           print('kredin hazir');
           break; //Bunu demezsek iki kere kredin hazır diye mesaj gider. Bunun yerine return de diyebiliriz ama öyle yaparsak aşağıdaki kodları okumaz.
        }
      }
  }

 //Bankadaki müşterilerin toplam parası

  for (var name in vbBank.keys) {
    //vbBank[item]! -> müşterinin hesapları demek.
    int result = 0;
    for (var money in vbBank[name]!) {
      result = result + money;
    }

    print('$name senin toplam paran -> $result');
    
  }

}