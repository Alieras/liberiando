import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _varImagen = '';
  String get varImagen => _varImagen;
  set varImagen(String value) {
    _varImagen = value;
  }

  DocumentReference? _varCategoria;
  DocumentReference? get varCategoria => _varCategoria;
  set varCategoria(DocumentReference? value) {
    _varCategoria = value;
  }

  DateTime? _varFecha;
  DateTime? get varFecha => _varFecha;
  set varFecha(DateTime? value) {
    _varFecha = value;
  }
}
