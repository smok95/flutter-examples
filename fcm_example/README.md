# fcm_example

fcm 예제



안내페이지 : https://firebase.flutter.dev/docs/messaging/overview/



---

### FlutterFire CLI 설치

https://firebase.flutter.dev/docs/cli



---

### Android 설정방법

#### 	firebase 설정

- firebase_core 추가

  > flutter pub add firebase_core

- flutterfire 초기화

  > flutterfire configure
  
  현재 앱과 연결(?)할 Firebase project 선택

- 초기화 코드 작성

  ```dart
  // main.dart에
  import 'package:firebase_core/firebase_core.dart';
  import 'firebase_options.dart';
  
  void main() async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
      
      runApp(MyApp());
  }
  ```



#### 	Cloud Messaging 설정

- firebase_messaging 패키지 추가

  > flutter pub add firebase_messaging

  

- firebase_messaging 패키지 추가

  > flutter pub add firebase_messaging



#### ~~수동설치 (기존 프로젝트인 경우엔 수동으로 해야되나??)~~

​	~~https://firebase.flutter.dev/docs/manual-installation~~

- ~~firebase console에서 **google-services.json** 다운로드 후 **android/app**폴더에 복사~~

- ~~google-services플러그인 설정~~

  - ~~*android/build.gradle*  **buildscript > dependencies** 에 추가~~

    > ~~classpath 'com.google.gms:google-services:4.3.8'~~

  - ~~*app/build.gradle* 에 추가~~

    > ~~apply plugin: 'com.google.gms.google-services'~~



### local notification 설정

- flutter_local_notifications 추가

  > flutter pub add flutter_local_notifications



- AndroidNotificationChannel 생성

  소스에서 AndroidNotificationChannel 부분 참고

  ```dart
  const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    'This channel is used for important notifications.', // description
    importance: Importance.max,
  );
  ```

  ```dart
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  
  // Create the channel on the device
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
  ```

- AndroidManifest.xml 수정

  ```xml
  <!-- application 태그안에 추가 -->
  <meta-data
    android:name="com.google.firebase.messaging.default_notification_channel_id"
    android:value="high_importance_channel" />
  ```

  
