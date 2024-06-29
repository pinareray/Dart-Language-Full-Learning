void main(List<String> args) {
  
  int money = 15;
  String userName = "Laura";
  //bool => 0, 1
  bool isCustomerRich = true; //Customer is rich.
  print('$money' + userName);

  if(money>10){
    print("You are rich.");
  }

  else{
    print("You are not rich.");
  }

  money = money - 10; 

  if(money>10){
    print("You are very rich.");
  }

  else{
    print("What are you doing here?");
  } 

//--------

  int newCustomerMoney = 0;
  const int bankingCost = 5;
  const int bankingCostGeneral = 20;
  if(newCustomerMoney>5){
    print("Welcome madam");
    newCustomerMoney = newCustomerMoney - bankingCostGeneral;
  }
  else if(newCustomerMoney>0){
    print("Madam, please get in line.");
  }
  else{
    print("Madam, pay your debt.");
  }


//---------

  final String ahmetCompany = "Ahmet";
  final String mehmetCompany = "Mehmet";
  final String veliCompany = "Veli";
  final String kxCompany = "kx";
  final String xCompany = "x";

  const int companyLenght = 2;
  String results = "";
  

  if(ahmetCompany.length>companyLenght){
    results = results + ahmetCompany;
  }
  if(mehmetCompany.length>companyLenght){
    results = results + mehmetCompany;
  }
  if(veliCompany.length>companyLenght){
    results = results + veliCompany;
  }
  if(kxCompany.length>companyLenght){
    results = results + kxCompany;
  }
  if(xCompany.length>companyLenght){
    results = results + xCompany;
  }

  if(results.length == 0){ //result.isEmpty de kullanılabilir. Bu eğer boşsa çalışır.Boş olup olmadığını sorgulatır.
    print("we couldn't find a name");
  }
  else{
    print(results);
  }



}