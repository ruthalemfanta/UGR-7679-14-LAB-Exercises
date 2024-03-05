class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);
  void vroom() {
    print("Vroom Vroom");
  }
}

class ElectricCar extends Car {
  double batteryLife;

  ElectricCar(String brand, String model, int year, this.batteryLife)
      : super(brand, model, year);
}

void main() {
  Car exampleCar = Car('Suzuki', 'Swift', 2022);

  print("Brand: ${exampleCar.brand}");
  print("Model: ${exampleCar.model}");
  print("Year: ${exampleCar.year}");

  exampleCar.vroom();
}
