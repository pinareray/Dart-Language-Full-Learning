

//adı ,parası olmak zorunda yaşı ve city vermeyebilir.
// id değişkenine sadece bu sınıf içinden erişebilsin derse private yapmalıyız.
  class User {
  
  late final String name; //late dersek bu değişkenin sonradan değerini bulacağını söylemiş oluruz.
  late int money;
  late final int? age; //vermeyebilir dediği için ? kullandık. 
  late final String? city;

  late final String userCode;

  late final String _id;//alt tre kullanarak private yaptık.

  User(String name, int money, {required String id, int? age, String? city}){
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    _id = id;
    userCode = (city ?? 'ist') + name;
  }

  bool isSpecialUser(String id) {
    return _id == id;
  }

 /*  bool isEmptyId(String id){
    return _id.isEmpty;
  } */

  bool get isEmptyId => _id.isEmpty; //Yukarıdaki işlemle aynı anlama gelir.
//id boş mu dolu mu kontrol ettik.
//get yazdığımız için çağrıldığında hesaplanır her defasında 
  }