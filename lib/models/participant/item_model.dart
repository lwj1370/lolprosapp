class Item {
  int goldEarned;
  int goldSpent;
  double goldPerMinute;
  int item0;
  int item1;
  int item2;
  int item3;
  int item4;
  int item5;
  int item6;

  Item({
    required this.goldEarned,
    required this.goldSpent,
    required this.goldPerMinute,
    required this.item0,
    required this.item1,
    required this.item2,
    required this.item3,
    required this.item4,
    required this.item5,
    required this.item6,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    Item item = Item.empty();
    try {
      item = Item(
        goldEarned: json['goldEarned'],
        goldSpent: json['goldSpent'],
        goldPerMinute: json['goldPerMinute'],
        item0: json['item0'],
        item1: json['item1'],
        item2: json['item2'],
        item3: json['item3'],
        item4: json['item4'],
        item5: json['item5'],
        item6: json['item6'],
      );
    } catch(e) {
      print('Error - $e');
    }

    return item;
  }

  factory Item.empty() => Item(
    goldEarned: 0,
    goldSpent: 0,
    goldPerMinute: 0.0,
    item0: 0,
    item1: 0,
    item2: 0,
    item3: 0,
    item4: 0,
    item5: 0,
    item6: 0,
  );

}