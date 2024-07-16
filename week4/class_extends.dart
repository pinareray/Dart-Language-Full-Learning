void main() {
  final userNormal = User('vb', 15);
  final usersBank = BankUser('Celine', 155, 123);
  final usrSpecial = SpecialUser('Ali', 12312, 123123, 30);



  userNormal.sayMoneyWithCompanyName();
  usersBank.sayMoneyWithCompanyName();
  usrSpecial.sayMoneyWithCompanyName();
  
  print(usrSpecial.calculateMoney); 
  print(usrSpecial.money); 
}



abstract class IUser{
  final String name;
  final int money;

  IUser(this.name, this.money);

  void sayMoneyWithCompanyName(){
    print('$name - $money paraniz vardir');
  }
}
//Bütün müşteriler paralarını, banka ismiyle görmeli.
class User extends IUser{
  final String name;
  final int money;

  User(this.name, this.money) : super(name, money);

  // void sayMoneyWithCompanyName() {
  //   print('Ahmet - $money paraniz vardir');//Bunu hepsine tek tek yapmak zor.Bu yüzden abstract class kavramını kullanabiliriz.
    
  }


class BankUser extends IUser{
  final int bankingCode;

  BankUser(String name, int money, this.bankingCode) : super(name, money);

  void bankSpecialLogic(){
    print(money);
  }
}

class SpecialUser extends IUser{
  final String name;
  final int money;
  final int bankingCode;
  late final int _disccount;

  SpecialUser(this.name, this.money, this.bankingCode, int disccount) : super(name, money){
    _disccount = disccount;

    //indirimli fiyatim ne kadar
  }
    int get calculateMoney => money -(money ~/ _disccount);
  
}