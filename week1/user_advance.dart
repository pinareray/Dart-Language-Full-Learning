void main(List<String> args) {
  
  String userName = "Veli";

  final int bankMoney = 100;
  const String bankName = "VB Bank";

  var userName2 = 'veli2';
  var userName2Money = 15;

  userName2Money -= 10;

  //------ example
  //Bank name = "PE BANK"
  // bank user 1 = "Jay" ve bank user 1'in parasi 100.00
  //bank user 1'e kimse dokunamaz.
  //A new customer came and her name is Anabella
  // user 2 den user1 in parasını çıkart.

 const String bankNameSpecial = "PE Bank"; //camel case formatında
 const String user1 = "Jay";
 const double user1Money = 100.00;

 const String user2 = "Anabella";
 int user2Money = 500;

user2Money = user2Money - user1Money.toInt();

print("User 2 money: $user2Money ");

}