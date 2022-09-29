class InventoryManager {
  final String number;
  final String title;

  InventoryManager({required this.number, required this.title});
}

List<InventoryManager> inventory = [
  InventoryManager(number: '6', title: 'Bundles'),
  InventoryManager(number: '671', title: 'Variants'),
  InventoryManager(number: '\$19.7k', title: 'Inventory cost'),
  InventoryManager(number: '\$2.84k', title: 'Open purchase orders value')
];
