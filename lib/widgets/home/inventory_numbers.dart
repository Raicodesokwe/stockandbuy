import 'package:flutter/material.dart';

import '../../model/inventory_manager.dart';

class InventoryNumbers extends StatelessWidget {
  const InventoryNumbers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: inventory.length,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
            leading: Container(
              height: 100,
              width: 70,
              child: Center(
                child: Text(
                  inventory[index].number,
                  style: TextStyle(color: Colors.black54, fontSize: 14),
                ),
              ),
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black54),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blue.withOpacity(0.3)),
            ),
            title: Text(
              inventory[index].title,
            ),
          );
        });
  }
}
