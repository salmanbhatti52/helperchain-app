
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Models/signup-model.dart';

mixin AuthData {
  static UserDetail? _userdetail;

  // static UserLocation? _userLocation;
  // static SaveVideo? _saveVideo;
  // static Data? _data;
  // static UserDetail? _userdetail;
  // static List<UserCategoriesModel>? _userCategory;
  static String? _accessToken;
  static String? _unreadMessage;
  static String? _payerId;
  static SharedPreferences? prefs;
  static bool _isGoogleLogin = false;
  static bool _isFacebookLogin = false;

  static Future<void> initiate() async {
    //Hive.registerAdapter(ProfileAdapter());
    Hive.registerAdapter(UserDetailAdapter());

    final box = await Hive.openLazyBox<UserDetail>('userDetail');


    if (box.isNotEmpty) {
      _userdetail = await box.getAt(0);
    }

    ///commented, it shows null-check error, dont know used for what
    // _accessToken = prefs!.getString('access_token');
    // _accessToken = prefs!.getString('access_token');
  }


  Future<void> signOut() async {
    _userdetail = null;
    _accessToken = null;
    SharedPreferences.getInstance().then((value) => value.clear());
    await Hive.lazyBox<UserDetail>('userDetail').clear();
  }


  // UserDetail? get profile => _profile;
  // set profile(UserDetail? prof) {
  //   _profile = prof;
  //   Hive.lazyBox<UserDetail>('profiles').clear().then((value) {
  //     Hive.lazyBox<UserDetail>('profiles')
  //         .add(prof!)
  //         .then((value) => prof.save());
  //   });
  // }


  UserDetail? get userdetail => _userdetail;
  set userdetail(UserDetail? userdetail) {
    _userdetail = userdetail;
    Hive.lazyBox<UserDetail>('userdetail').clear().then((value) {
      Hive.lazyBox<UserDetail>('userdetail')
          .add(userdetail!)
          .then((value) => userdetail.save());
    });
  }


// UserLocation? get userLocation => _userLocation;
// set userLocation(UserLocation? loc) {
//   _userLocation = loc;
//   Hive.lazyBox<UserLocation>('userLocation').clear().then((value) {
//     Hive.lazyBox<UserLocation>('userLocation')
//         .add(loc!)
//         .then((value) => loc.save());
//   });
// }

// SaveVideo? get saveVideo => _saveVideo;
// set saveVideo(SaveVideo? video) {
//   _saveVideo = video;
//   Hive.lazyBox<SaveVideo>('saveVideo').clear().then((value) {
//     Hive.lazyBox<SaveVideo>('saveVideo')
//         .add(video!)
//         .then((value) => video.save());
//   });
// }

// Data? get data => _data;
// set data(Data? data) {
//   _data = data;
//   Hive.lazyBox<Data>('data').clear().then((value) {
//     Hive.lazyBox<Data>('data')
//         .add(data!)
//         .then((value) => data.save());
//   });
// }
//
//
//
// UserDetail?  get  userdetail => _userdetail;
// set userdetail(UserDetail? userdetail) {
//   _userdetail = userdetail;
//   Hive.lazyBox<UserDetail>('userDetail').clear().then((value) {
//     Hive.lazyBox<UserDetail>('userDetail')
//         .add(userdetail!)
//         .then((value) => userdetail.save());
//   });
// }
// Future updateUserProfile() async {
//   if(this.isAuthenticated) {
//     this.user = ( await UserDetailService().get(userId: this.user.user_id)).userdetail;
//   }
// }

}
