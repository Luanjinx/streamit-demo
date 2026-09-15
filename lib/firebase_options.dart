import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCsJLRihuO-i2cMfJeB7lLeCJ158e8yeFk',
    appId: isIOS ? '1:988658912152:ios:953ac53ed92054967bf9ed' : '1:988658912152:android:46b188878790fb527bf9ed',
    messagingSenderId: '123',
    projectId: 'streamit-5ef16',
    storageBucket: 'streamit-5ef16.firebasestorage.app',
    iosBundleId: 'com.iqonic.ios'
  );

  ///Note : Values available android/app/google-services.json

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCsJLRihuO-i2cMfJeB7lLeCJ158e8yeFk',
    appId: isIOS ? '1:988658912152:ios:953ac53ed92054967bf9ed' : '1:988658912152:android:46b188878790fb527bf9ed',
    messagingSenderId: '123',
    projectId: 'streamit-5ef16',
    storageBucket: 'streamit-5ef16.firebasestorage.app',
    iosBundleId: 'com.iqonic.ios'
  );
}