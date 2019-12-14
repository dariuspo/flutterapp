class Schedule {
  int id;
  String time;

  Schedule(this.id, this.time);

  Schedule.fromJson(Map json)
      : id = json['id'],
        time = json['waktu'];

  Map toJson() {
    return {'id': id, 'time': time};
  }
}
