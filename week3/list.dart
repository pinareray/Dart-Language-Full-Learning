void main(){

  List<int> moneys = [100,110,500,200,300];
  final List<int> newMoneys = [100,110,500,200,300];
  print('Musteri1 in parasi: ${moneys[0]}');

  moneys.sort();
  moneys.add(15); 
  moneys.insert(2,300);
  print(moneys);

  newMoneys.add(5);
  newMoneys.clear();
  print(newMoneys);
  // newMoneys.reversed.toList();

  //Example: Create 100 customers and give them 5 TL according to their sequence numbers.

  List<double> customerMoney = List.generate(100, (index){
    return index + 5;
  });
  print(customerMoney);

  List<int>moneyCustomerNews = [100,30,40,60,-5];
  moneyCustomerNews.sort();//Parasi küçük olandan baslar.

  for (int i = 0; i < moneyCustomerNews.length; i++) {
    print('Musteri parasi : ${moneyCustomerNews[i]}');
    if (moneyCustomerNews[i]>35) {
      print('kredi hazir');
    }
    else if(moneyCustomerNews[i]>0){
      print('kredi veremeyiz ama bir bakalim.');
    }
    else{
      print("good by");
    }
  }


}