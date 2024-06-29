
void main(List<String> args) {
  
//keep customer's name
//find out customer's money
//Say hello to the cu stomer and tell him his money.
//Then add five dollars to his money.Replace this added money with ten.

int userMoney = 25;
String userName = "Veli";
userMoney = userMoney + 5;

print("Hello $userName $userMoney");

print('-----');
userMoney = userMoney - 10; // or userMoney -=10 

print('Your money has lost value. $userMoney');


double newMoney = 15.2;
newMoney = newMoney/2;
print('Your money has lost value. $newMoney');

}