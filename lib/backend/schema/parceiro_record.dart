import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ParceiroRecord extends FirestoreRecord {
  ParceiroRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "TipoEmpresa" field.
  String? _tipoEmpresa;
  String get tipoEmpresa => _tipoEmpresa ?? '';
  bool hasTipoEmpresa() => _tipoEmpresa != null;

  // "Patrocinador" field.
  String? _patrocinador;
  String get patrocinador => _patrocinador ?? '';
  bool hasPatrocinador() => _patrocinador != null;

  // "ID" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  void _initializeFields() {
    _nome = snapshotData['Nome'] as String?;
    _tipoEmpresa = snapshotData['TipoEmpresa'] as String?;
    _patrocinador = snapshotData['Patrocinador'] as String?;
    _id = snapshotData['ID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Parceiro');

  static Stream<ParceiroRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ParceiroRecord.fromSnapshot(s));

  static Future<ParceiroRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ParceiroRecord.fromSnapshot(s));

  static ParceiroRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ParceiroRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ParceiroRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ParceiroRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ParceiroRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ParceiroRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createParceiroRecordData({
  String? nome,
  String? tipoEmpresa,
  String? patrocinador,
  String? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nome': nome,
      'TipoEmpresa': tipoEmpresa,
      'Patrocinador': patrocinador,
      'ID': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class ParceiroRecordDocumentEquality implements Equality<ParceiroRecord> {
  const ParceiroRecordDocumentEquality();

  @override
  bool equals(ParceiroRecord? e1, ParceiroRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.tipoEmpresa == e2?.tipoEmpresa &&
        e1?.patrocinador == e2?.patrocinador &&
        e1?.id == e2?.id;
  }

  @override
  int hash(ParceiroRecord? e) => const ListEquality()
      .hash([e?.nome, e?.tipoEmpresa, e?.patrocinador, e?.id]);

  @override
  bool isValidKey(Object? o) => o is ParceiroRecord;
}
