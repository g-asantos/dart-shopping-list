void main() {
  final person = Person(name: 'Guilherme Santos', altura: 1.75, peso: 67);
  final doctor = Doctor(crm: 1232145, name: 'Pedro', altura: 1.77, peso: 72);

  print(person.calcularIMC());
  print(doctor.calcularIMC());
}

class Doctor extends Person {
  final int crm;

  Doctor(
      {required this.crm,
      required String name,
      required double altura,
      required double peso})
      : super(name: name, altura: altura, peso: peso);
}

class Person {
  final String name;
  final double altura;
  final double peso;

  Person({required this.name, required this.altura, required this.peso});

  double calcularIMC() {
    return peso / (altura * altura);
  }
}
