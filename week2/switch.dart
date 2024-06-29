void main(){

  final int classDegre = 2;
  bool isSuccess = false;
// 2 - perfect
// 1 - successful
// 0 - it will do
// diğer durumlarda - unsuccessful

  const int succesValueHigh = 2;

  switch(classDegre){
   case succesValueHigh:
    print('perfect');
    isSuccess = true;
    break;
   case 1:
    print('successful');
    isSuccess = true;
    break;
   case 0:
    print('it will do');
    isSuccess = true;
    break;
   default:
    print('unsuccessful');
    isSuccess = false;

  }

  print('Result: $isSuccess');


//-----
// name = Lucas or Ekin => perfect
  String name = "Lucas";

  const String specialUser1 = "Lucas";
  const String specialUser2 = "Ekin";

  switch(name){
    case "specialUser1":
    case "specialUser2":
     print('bravo');
     break;
   default:
     print('unsuccessful');
  }

}