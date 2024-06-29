void main(){
  int money = 5;

  money = money + 1;
  money+=1;
  money++;
  money--;


  String name = "Anabella";
  String surname = "Jefforson";

  print(name+surname);
  
  if(name == 'veli'){}
  if(name != 'veli'){}
  if(name.length > 'veli'.length){}
  if(name.length < 'veli'.length){}
  if(name.length <= 'veli'.length){}
  if(name.length >= 'veli'.length){}

  const int appleMoney = 20;
  const double disccount = 2.5;

  int myMoney = 30;

  myMoney = myMoney - (appleMoney ~/ disccount);
  print(myMoney);
  print(myMoney % 2 == 0);//çift mi?
  print(myMoney.isEven); //çift mi diye kontrol ettik.
  print(myMoney.isOdd);//tek mi?

}
