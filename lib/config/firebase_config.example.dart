import 'package:firebase_core/firebase_core.dart';

/// Firebase 설정 정보 예제 파일
/// 
/// 이 파일을 복사하여 firebase_config.dart로 이름을 변경하고,
/// 실제 Firebase 설정 정보를 입력하세요.
/// 
/// Firebase Console에서 설정 정보를 가져오는 방법:
/// 1. Firebase Console (https://console.firebase.google.com) 접속
/// 2. 프로젝트 선택
/// 3. 프로젝트 설정 (톱니바퀴 아이콘) → 일반 탭
/// 4. "내 앱" 섹션에서 웹 앱 선택 또는 추가
/// 5. Firebase SDK 추가 → 구성에서 설정 정보 복사
class FirebaseConfig {
  static const FirebaseOptions options = FirebaseOptions(
    apiKey: "YOUR_API_KEY",
    appId: "YOUR_APP_ID",
    messagingSenderId: "YOUR_MESSAGING_SENDER_ID",
    projectId: "YOUR_PROJECT_ID",
    authDomain: "YOUR_PROJECT_ID.firebaseapp.com",
    storageBucket: "YOUR_PROJECT_ID.appspot.com",
  );
}

