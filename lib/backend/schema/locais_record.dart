import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class LocaisRecord extends FirestoreRecord {
  LocaisRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "coordenadas" field.
  LatLng? _coordenadas;
  LatLng? get coordenadas => _coordenadas;
  bool hasCoordenadas() => _coordenadas != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _coordenadas = snapshotData['coordenadas'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('locais');

  static Stream<LocaisRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LocaisRecord.fromSnapshot(s));

  static Future<LocaisRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LocaisRecord.fromSnapshot(s));

  static LocaisRecord fromSnapshot(DocumentSnapshot snapshot) => LocaisRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LocaisRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LocaisRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LocaisRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LocaisRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLocaisRecordData({
  String? nome,
  LatLng? coordenadas,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'coordenadas': coordenadas,
    }.withoutNulls,
  );

  return firestoreData;
}

class LocaisRecordDocumentEquality implements Equality<LocaisRecord> {
  const LocaisRecordDocumentEquality();

  @override
  bool equals(LocaisRecord? e1, LocaisRecord? e2) {
    return e1?.nome == e2?.nome && e1?.coordenadas == e2?.coordenadas;
  }

  @override
  int hash(LocaisRecord? e) =>
      const ListEquality().hash([e?.nome, e?.coordenadas]);

  @override
  bool isValidKey(Object? o) => o is LocaisRecord;
}
