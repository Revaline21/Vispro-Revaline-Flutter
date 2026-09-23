class MenuItem{
    final String name;
    final double price;
    final double? discountPercent;
    MenuItem(
      this.name, 
      this.price, 
      this.discountPercent
    );

  double finalPrice() {
  final discount = discountPercent;
  if (discount == null) return price;
  return price - (price * discount / 100);
  }
}
  void main() {
  final items = [
    MenuItem('Nasi Goreng', 20000, 10),
    MenuItem('Es Teh', 5000, null),
    MenuItem('Kerupuk', 3000, null),
  ];

  final names = items.map((item) => item.name).toList();
  final cheapItems = items.where((item) => item.price < 15000).toList();
  final totalPrice = items.fold(0.0, (sum, item) => sum + item.price);

  print(names);
  print(cheapItems.map((e) => e.name));
  print(totalPrice);
}