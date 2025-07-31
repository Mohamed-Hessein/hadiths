import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:go_router/go_router.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/Bookdetailsbody.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/Bookpagebody.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/Bookspage.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/Forgotpasswordbody.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/Home_view.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/bookdetails.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/createnewpassword.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/createnewpasswordbody.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/forgotpassword.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/getcode.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/getcodebody.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/loginview.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/searchview.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/searchviewbody.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/setting.dart';
import 'package:wazker/Featured/Persintion/Home/views/splash/Splash.dart';
import 'package:wazker/Featured/Home/persintion/views/screens/CreateAcountpage.dart';

class Router2 {
  static final String kHomeview = '/Homeview';
  static final String KCreateacountpage = '/create';
  static final String Klogin = '/login';
  static final Kforgot = '/forgot';
  static final Kgetcode = '/code';
  static final Knewpassword = '/newpass';
  static final KBookPage = '/Bookpage';
  static final KBookcatgorydetails = '/Bookcatogrydetails';
  static final KsearchIcon = '/SearchIcon';
  static final KgoAftersignup = '/Goafter';
  static final Ksetting = '/setting';
  static User? user = FirebaseAuth.instance.currentUser;
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => Splash()),
      GoRoute(path: kHomeview, builder: (context, state) => HomeView()),
      GoRoute(
        path: KCreateacountpage,
        builder: (context, state) => Createacountpage(),
      ),
      GoRoute(path: Klogin, builder: (context, state) => Loginview()),
      GoRoute(path: Kforgot, builder: (context, state) => Forgotpassword()),
      GoRoute(path: Kgetcode, builder: (context, state) => Getcode()),
      GoRoute(
        path: Knewpassword,
        builder: (context, state) => Createnewpassword(),
      ),
      GoRoute(path: KBookPage, builder: (context, state) => Bookspage()),
      GoRoute(
        path: KBookcatgorydetails,
        builder: (context, state) => Bookdetails(),
      ),
      GoRoute(path: KsearchIcon, builder: (context, state) => Searchview()),
      GoRoute(path: KgoAftersignup, builder: (context, state) => Loginview()),
      GoRoute(path: Ksetting, builder: (context, state) => Setting()),
    ],
  );
}
