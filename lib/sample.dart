class Player{
  final int id;
  final String name;
  final int height;
  final int weight;
  final int age;
  final String position;
  final String nation;
  final String club;
  final String dominatFoot;

  Player({this.id, this.name, this.height, this.weight, this.age, this.position, this.club, this.dominatFoot, this.nation});
  
  Map<String, dynamic> toMap(){
    return {
      "id": id,
      "name":name,
      "height":height,
      "weight":weight,
      "age":age,
      "position":position,
      "nation":nation,
      "club":club,
      "dominatFoot":dominatFoot
    };
  }
}