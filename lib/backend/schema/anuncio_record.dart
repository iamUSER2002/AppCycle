import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class AnuncioRecord extends FirestoreRecord {
  AnuncioRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "Foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "UserID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "TipoLixo" field.
  String? _tipoLixo;
  String get tipoLixo => _tipoLixo ?? '';
  bool hasTipoLixo() => _tipoLixo != null;

  // "Descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "Local" field.
  LatLng? _local;
  LatLng? get local => _local;
  bool hasLocal() => _local != null;

  // "CompradorID" field.
  DocumentReference? _compradorID;
  DocumentReference? get compradorID => _compradorID;
  bool hasCompradorID() => _compradorID != null;

  // "ID" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "NumTlmv" field.
  String? _numTlmv;
  String get numTlmv => _numTlmv ?? '';
  bool hasNumTlmv() => _numTlmv != null;

  void _initializeFields() {
    _data = snapshotData['Data'] as DateTime?;
    _foto = snapshotData['Foto'] as String?;
    _nome = snapshotData['Nome'] as String?;
    _userID = snapshotData['UserID'] as DocumentReference?;
    _tipoLixo = snapshotData['TipoLixo'] as String?;
    _descricao = snapshotData['Descricao'] as String?;
    _local = snapshotData['Local'] as LatLng?;
    _compradorID = snapshotData['CompradorID'] as DocumentReference?;
    _id = snapshotData['ID'] as String?;
    _numTlmv = snapshotData['NumTlmv'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Anuncio');

  static Stream<AnuncioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnuncioRecord.fromSnapshot(s));

  static Future<AnuncioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnuncioRecord.fromSnapshot(s));

  static AnuncioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnuncioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnuncioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnuncioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnuncioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnuncioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnuncioRecordData({
  DateTime? data,
  String? foto,
  String? nome,
  DocumentReference? userID,
  String? tipoLixo,
  String? descricao,
  LatLng? local,
  DocumentReference? compradorID,
  String? id,
  String? numTlmv,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Data': data,
      'Foto': foto,
      'Nome': nome,
      'UserID': userID,
      'TipoLixo': tipoLixo,
      'Descricao': descricao,
      'Local': local,
      'CompradorID': compradorID,
      'ID': id,
      'NumTlmv': numTlmv,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnuncioRecordDocumentEquality implements Equality<AnuncioRecord> {
  const AnuncioRecordDocumentEquality();

  @override
  bool equals(AnuncioRecord? e1, AnuncioRecord? e2) {
    return e1?.data == e2?.data &&
        e1?.foto == e2?.foto &&
        e1?.nome == e2?.nome &&
        e1?.userID == e2?.userID &&
        e1?.tipoLixo == e2?.tipoLixo &&
        e1?.descricao == e2?.descricao &&
        e1?.local == e2?.local &&
        e1?.compradorID == e2?.compradorID &&
        e1?.id == e2?.id &&
        e1?.numTlmv == e2?.numTlmv;
  }

  @override
  int hash(AnuncioRecord? e) => const ListEquality().hash([
        e?.data,
        e?.foto,
        e?.nome,
        e?.userID,
        e?.tipoLixo,
        e?.descricao,
        e?.local,
        e?.compradorID,
        e?.id,
        e?.numTlmv
      ]);

  @override
  bool isValidKey(Object? o) => o is AnuncioRecord;
}
