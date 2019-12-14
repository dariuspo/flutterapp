class Schedule {
  int id;
  String name;

  Schedule(int id, String name) {
    this.id = id;
    this.name = name;
  }

  Schedule.fromJson(Map json)
      : id = json['id'],
        name = json['Pemesan'];

  Map toJson() {
    return {'id': id, 'name': name};
  }
}
