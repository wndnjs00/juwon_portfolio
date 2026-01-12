import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static const String _collectionName = 'inquiries';

  // 문의하기 데이터를 Firestore에 저장
  static Future<void> saveInquiry({
    required String title,
    required String name,
    required String email,
    required String content,
    required String service,
  }) async {
    try {
      await _firestore.collection(_collectionName).add({
        'title': title,
        'name': name,
        'email': email,
        'content': content,
        'service': service,
        'createdAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      throw Exception('문의하기 저장 중 오류가 발생했습니다: $e');
    }
  }
}

