class Fruit {
  String ?name;
  String ?color;
  double ?price;

  Fruit({this.name, this.color, this.price});
}
void applyPriceDiscount(List<Fruit> fruits,dis){
  double ?price;
  double ?temp;
  for (int i = 0; i < fruits.length; i++) {
    Fruit fruit = fruits[i];
    price = fruit.price?? 0.0;
    temp = price - price*dis/100;
    fruit.price = temp;
  }
}
void displayFruitDetails(List<Fruit> fruits){
  for (int i = 0; i < fruits.length; i++) {
    Fruit fruit = fruits[i];
    print('Name: ${fruit.name}, Color: ${fruit.color}, Price: ${fruit.price}');
  }
}
void main() {
  List<Fruit> fruits = [
    Fruit(name: 'Apple', color: 'Red', price: 2.5),
    Fruit(name: 'Banana', color: 'Yellow', price: 1.0),
    Fruit(name: 'Orange', color: 'Orange', price: 3.0),
  ];
  print("Original Fruit Details before Discount:");
  displayFruitDetails(fruits);
  print("\nAfter applying discount of 10%");
  applyPriceDiscount(fruits,10);
  displayFruitDetails(fruits);
}