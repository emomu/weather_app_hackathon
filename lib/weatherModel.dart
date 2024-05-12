class WeatherModel {
  String gun;
  String ikon;
  String durum;
  String derece;
  String min;
  String max;
  String nem;
  String gece;

  WeatherModel(this.ikon, this.gun, this.durum, this.derece, this.min, this.max,
      this.nem, this.gece);

  WeatherModel.fromJson(Map<String, dynamic> json)
      : gun = json['day'],
        ikon = json['icon'],
        durum = json['description'],
        derece = json['degree'],
        min = json['min'],
        max = json['max'],
        gece = json['night'],
        nem = json['humidity'];
}
