class Characteristics{
  final int id;
  final double weight;

  const Characteristics(this.id, this.weight);

  Map toMap(){
    return {
      'id': id,
      'weight': weight
    };
  }
}