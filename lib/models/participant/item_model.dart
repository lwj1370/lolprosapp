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

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    goldEarned: int.parse(json['goldEarned']),
    goldSpent: int.parse(json['goldSpent']),
    goldPerMinute: double.parse(json['goldPerMinute']),
    item0: int.parse(json['item0']),
    item1: int.parse(json['item1']),
    item2: int.parse(json['item2']),
    item3: int.parse(json['item3']),
    item4: int.parse(json['item4']),
    item5: int.parse(json['item5']),
    item6: int.parse(json['item6']),
  );

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