class module{
  static List<Item> items=
  [
    Item(name: "Charterux",
        desc: "Chartreux cats have been known to be compared to mimes due to how quiet they can be along with their silliness at times. Short playtimes intermitted with naps and meals is the perfect day for a Chartreux",
        image:"https://bestinau.com.au/wp-content/uploads/2019/01/Chartreux.jpg",
        price: 7654),
  ];
}
class Item {
  final String name;
  final String desc;
  final String image;
  final int price;
  Item({ required this.name,
    required this.desc,
    required this.image,
    required this.price});

  factory Item.fromMap(Map<String,dynamic> map){
    return Item(
      name:map['name'],
      desc:map['desc'],
      price:map['price'],
      image:map['image'],
    );
  }
}
  // toMap()=>{
  //
  //   "name":name,
  //   "desc":desc,
  //   "price":price,
  //   "image":image,
  //
  // };

