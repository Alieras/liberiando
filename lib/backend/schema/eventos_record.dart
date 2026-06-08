import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventosRecord extends FirestoreRecord {
  EventosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "Categoria" field.
  DocumentReference? _categoria;
  DocumentReference? get categoria => _categoria;
  bool hasCategoria() => _categoria != null;

  // "Fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "Lugar" field.
  String? _lugar;
  String get lugar => _lugar ?? '';
  bool hasLugar() => _lugar != null;

  // "Direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "Organizador" field.
  String? _organizador;
  String get organizador => _organizador ?? '';
  bool hasOrganizador() => _organizador != null;

  // "Imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "Precio" field.
  String? _precio;
  String get precio => _precio ?? '';
  bool hasPrecio() => _precio != null;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
    _descripcion = snapshotData['Descripcion'] as String?;
    _categoria = snapshotData['Categoria'] as DocumentReference?;
    _fecha = snapshotData['Fecha'] as DateTime?;
    _lugar = snapshotData['Lugar'] as String?;
    _direccion = snapshotData['Direccion'] as String?;
    _organizador = snapshotData['Organizador'] as String?;
    _imagen = snapshotData['Imagen'] as String?;
    _precio = snapshotData['Precio'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('eventos');

  static Stream<EventosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventosRecord.fromSnapshot(s));

  static Future<EventosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventosRecord.fromSnapshot(s));

  static EventosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EventosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventosRecordData({
  String? nombre,
  String? descripcion,
  DocumentReference? categoria,
  DateTime? fecha,
  String? lugar,
  String? direccion,
  String? organizador,
  String? imagen,
  String? precio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
      'Descripcion': descripcion,
      'Categoria': categoria,
      'Fecha': fecha,
      'Lugar': lugar,
      'Direccion': direccion,
      'Organizador': organizador,
      'Imagen': imagen,
      'Precio': precio,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventosRecordDocumentEquality implements Equality<EventosRecord> {
  const EventosRecordDocumentEquality();

  @override
  bool equals(EventosRecord? e1, EventosRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.categoria == e2?.categoria &&
        e1?.fecha == e2?.fecha &&
        e1?.lugar == e2?.lugar &&
        e1?.direccion == e2?.direccion &&
        e1?.organizador == e2?.organizador &&
        e1?.imagen == e2?.imagen &&
        e1?.precio == e2?.precio;
  }

  @override
  int hash(EventosRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.descripcion,
        e?.categoria,
        e?.fecha,
        e?.lugar,
        e?.direccion,
        e?.organizador,
        e?.imagen,
        e?.precio
      ]);

  @override
  bool isValidKey(Object? o) => o is EventosRecord;
}
