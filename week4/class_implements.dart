void main(List<String> args) {
  
}

abstract class IStudent{
  final String name;
  final int age;
  

  void saySomething() {
    print(age);
  }

  IStudent(this.name, this.age);
}
//extend edersek farklı özelliklere sahip olabilir alt sınıf 
//ama implement edersek üst sınıfın kopyaları olur. Alt dallarda aynı fonksiyonlar yer almalı
class Student implements IStudent{
  final String name;
  final int age;

  Student(this.name, this.age);
  
  @override
  void saySomething() {
    
  }
}

class Student2 implements IStudent{
  final String name;
  final int age;
  
  Student2(this.name, this.age);
  
  @override
  void saySomething() {
    print('a');
  }
}

