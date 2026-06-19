import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AsistenciasRecord extends FirestoreRecord {
  AsistenciasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "usuarioRef" field.
  DocumentReference? _usuarioRef;
  DocumentReference? get usuarioRef => _usuarioRef;
  bool hasUsuarioRef() => _usuarioRef != null;

  // "eventoRef" field.
  DocumentReference? _eventoRef;
  DocumentReference? get eventoRef => _eventoRef;
  bool hasEventoRef() => _eventoRef != null;

  // "fechaRegistro" field.
  DateTime? _fechaRegistro;
  DateTime? get fechaRegistro => _fechaRegistro;
  bool hasFechaRegistro() => _fechaRegistro != null;

  // "estado" field.
  bool? _estado;
  bool get estado => _estado ?? false;
  bool hasEstado() => _estado != null;

  void _initializeFields() {
    _usuarioRef = snapshotData['usuarioRef'] as DocumentReference?;
    _eventoRef = snapshotData['eventoRef'] as DocumentReference?;
    _fechaRegistro = snapshotData['fechaRegistro'] as DateTime?;
    _estado = snapshotData['estado'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Asistencias');

  static Stream<AsistenciasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AsistenciasRecord.fromSnapshot(s));

  static Future<AsistenciasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AsistenciasRecord.fromSnapshot(s));

  static AsistenciasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AsistenciasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AsistenciasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AsistenciasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AsistenciasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AsistenciasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAsistenciasRecordData({
  DocumentReference? usuarioRef,
  DocumentReference? eventoRef,
  DateTime? fechaRegistro,
  bool? estado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuarioRef': usuarioRef,
      'eventoRef': eventoRef,
      'fechaRegistro': fechaRegistro,
      'estado': estado,
    }.withoutNulls,
  );

  return firestoreData;
}

class AsistenciasRecordDocumentEquality implements Equality<AsistenciasRecord> {
  const AsistenciasRecordDocumentEquality();

  @override
  bool equals(AsistenciasRecord? e1, AsistenciasRecord? e2) {
    return e1?.usuarioRef == e2?.usuarioRef &&
        e1?.eventoRef == e2?.eventoRef &&
        e1?.fechaRegistro == e2?.fechaRegistro &&
        e1?.estado == e2?.estado;
  }

  @override
  int hash(AsistenciasRecord? e) => const ListEquality()
      .hash([e?.usuarioRef, e?.eventoRef, e?.fechaRegistro, e?.estado]);

  @override
  bool isValidKey(Object? o) => o is AsistenciasRecord;
}
