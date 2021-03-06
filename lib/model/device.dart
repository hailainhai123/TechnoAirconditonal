import 'dart:convert';

import 'package:floor/floor.dart';

@entity
class Device {
  @primaryKey
  String _id;
  @ColumnInfo(name: 'iduser', nullable: false)
  String iduser;
  @ColumnInfo(name: 'idnha', nullable: false)
  String idnha;
  @ColumnInfo(name: 'idphong', nullable: false)
  String idphong;
  @ColumnInfo(name: 'tentb', nullable: false)
  String tentb;
  @ColumnInfo(name: 'matb', nullable: false)
  String matb;
  @ColumnInfo(name: 'loaitb', nullable: false)
  String loaitb;
  @ColumnInfo(name: 'trangthai', nullable: false)
  String trangthai;
  @ColumnInfo(name: 'mac', nullable: false)
  String mac;
  @ColumnInfo(name: 'nhietdo', nullable: false)
  String nhietdo;
  @ColumnInfo(name: 'giuong', nullable: false)
  String giuong;
  @ColumnInfo(name: 'khoa', nullable: false)
  String khoa;
  bool isEnable = false;
  var color;

  String get tentbDecode {
    try {
      String s = tentb;
      List<int> ints = List();
      s = s.replaceAll('[', '');
      s = s.replaceAll(']', '');
      List<String> strings = s.split(',');
      for (int i = 0; i < strings.length; i++) {
        ints.add(int.parse(strings[i]));
      }
      return utf8.decode(ints);
    } catch (e) {
      return tentb;
    }
  }

  String get id => _id;

  set id(String id) {
    this._id = id;
  }

  Device(this._id, this.iduser, this.idnha, this.idphong, this.tentb, this.matb,
      this.loaitb, this.trangthai, this.mac);

  String toString() {
    return '$_id - $idphong - $tentb - $matb - $trangthai - $mac - $isEnable';
  }

  Device.fromJson(Map<String, dynamic> json)
      : _id = json['_id'],
        iduser = json['iduser'],
        idnha = json['idnha'],
        idphong = json['idphong'],
        tentb = json['tentb'],
        matb = json['matb'],
        loaitb = json['loaitb'],
        trangthai = json['trangthai'],
        mac = json['mac'];

  Map<String, dynamic> toJson() => {
        'id': _id,
        'iduser': iduser,
        'idnha': idnha,
        'idphong': idphong,
        'tentb': tentb,
        'matb': matb,
        'loaitb': loaitb,
        'trangthai': trangthai,
        'mac': mac
      };
}
