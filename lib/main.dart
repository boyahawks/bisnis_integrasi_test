import 'package:bisnis_integrasi/screen/dashboard.dart';
import 'package:bisnis_integrasi/screen/login.dart';
import 'package:bisnis_integrasi/utils/local_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  LocalStorage.prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final routes = <String, WidgetBuilder>{
    "/login": (BuildContext context) => Login(),
    "/dashboard": (BuildContext context) => Dashboard(),
  };

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Interview Maimaid',
        theme: ThemeData(fontFamily: 'OpenSans'),
        routes: routes,
        debugShowCheckedModeBanner: false,
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    loadingApp();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  loadingApp() async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => Login()),
            (Route<dynamic> route) => false);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(flex: 45, child: SizedBox()),
              Expanded(
                  flex: 55,
                  child: Column(
                    children: [
                      Center(
                          child: Text(
                            "Loading",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                      SizedBox(height: 10),
                      Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(
                              strokeWidth: 5,
                              color: Color.fromARGB(255, 30, 192, 35),
                            ),
                          )),
                    ],
                  )),
            ],
          )),
    );
  }
}

