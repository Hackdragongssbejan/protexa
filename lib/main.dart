import 'package:protexa/app/app_imports.dart';

void main() async {
  ScaledWidgetsFlutterBinding.ensureInitialized(
    scaleFactor: (deviceSize) {
      const designWidth = 430;
      return deviceSize.width / designWidth;
    },
  );
  // Firebase init (Android config already generated)
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
