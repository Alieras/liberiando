import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SolicitudOrganizadorRecord extends FirestoreRecord {
  SolicitudOrganizadorRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "usuarioRef" field.
  DocumentReference? _usuarioRef;
  DocumentReference? get usuarioRef => _usuarioRef;
  bool hasUsuarioRef() => _usuarioRef != null;

  // "fechaSolicitud" field.
  DateTime? _fechaSolicitud;
  DateTime? get fechaSolicitud => _fechaSolicitud;
  bool hasFechaSolicitud() => _fechaSolicitud != null;

  // "motivo" field.
  String? _motivo;
  String get motivo => _motivo ?? '';
  bool hasMotivo() => _motivo != null;

  // "revisadoPor" field.
  DocumentReference? _revisadoPor;
  DocumentReference? get revisadoPor => _revisadoPor;
  bool hasRevisadoPor() => _revisadoPor != null;

  // "fechaRevision" field.
  DateTime? _fechaRevision;
  DateTime? get fechaRevision => _fechaRevision;
  bool hasFechaRevision() => _fechaRevision != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  void _initializeFields() {
    _usuarioRef = snapshotData['usuarioRef'] as DocumentReference?;
    _fechaSolicitud = snapshotData['fechaSolicitud'] as DateTime?;
    _motivo = snapshotData['motivo'] as String?;
    _revisadoPor = snapshotData['revisadoPor'] as DocumentReference?;
    _fechaRevision = snapshotData['fechaRevision'] as DateTime?;
    _estado = snapshotData['estado'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('solicitudOrganizador');

  static Stream<SolicitudOrganizadorRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => SolicitudOrganizadorRecord.fromSnapshot(s));

  static Future<SolicitudOrganizadorRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SolicitudOrganizadorRecord.fromSnapshot(s));

  static SolicitudOrganizadorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SolicitudOrganizadorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SolicitudOrganizadorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SolicitudOrganizadorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SolicitudOrganizadorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SolicitudOrganizadorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSolicitudOrganizadorRecordData({
  DocumentReference? usuarioRef,
  DateTime? fechaSolicitud,
  String? motivo,
  DocumentReference? revisadoPor,
  DateTime? fechaRevision,
  String? estado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuarioRef': usuarioRef,
      'fechaSolicitud': fechaSolicitud,
      'motivo': motivo,
      'revisadoPor': revisadoPor,
      'fechaRevision': fechaRevision,
      'estado': estado,
    }.withoutNulls,
  );

  return firestoreData;
}

class SolicitudOrganizadorRecordDocumentEquality
    implements Equality<SolicitudOrganizadorRecord> {
  const SolicitudOrganizadorRecordDocumentEquality();

  @override
  bool equals(SolicitudOrganizadorRecord? e1, SolicitudOrganizadorRecord? e2) {
    return e1?.usuarioRef == e2?.usuarioRef &&
        e1?.fechaSolicitud == e2?.fechaSolicitud &&
        e1?.motivo == e2?.motivo &&
        e1?.revisadoPor == e2?.revisadoPor &&
        e1?.fechaRevision == e2?.fechaRevision &&
        e1?.estado == e2?.estado;
  }

  @override
  int hash(SolicitudOrganizadorRecord? e) => const ListEquality().hash([
        e?.usuarioRef,
        e?.fechaSolicitud,
        e?.motivo,
        e?.revisadoPor,
        e?.fechaRevision,
        e?.estado
      ]);

  @override
  bool isValidKey(Object? o) => o is SolicitudOrganizadorRecord;
}
