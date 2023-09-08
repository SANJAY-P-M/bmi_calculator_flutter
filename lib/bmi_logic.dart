import 'gender_enum.dart';

class BMILogic {
  String _gender = "MALE";
  int _height = 170;
  int _weight = 60;
  int _age = 20;
  void setMale(Gender gender) {
    this._gender = gender == Gender.male ? "MALE" : "FEMALE";
  }
}
