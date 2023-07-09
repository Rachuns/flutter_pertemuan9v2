import 'package:flutter/material.dart';
void main() {
runApp(MaterialApp(
initialRoute: '/',
routes: <String, WidgetBuilder>{
'/': (context) => HomePage(),
'/about': (context) => AboutPage(),
},
));
}
class HomePage extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('Belajar Routing'),
),
body: Center(
child: ElevatedButton(
onPressed: () {
Navigator.pushNamed(context, '/about');
},
child: const Text('Tap Untuk ke AboutPage'),
),
),
);
}
}
class AboutPage extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('Tentang Aplikasi'),
),
body: Center(
child: ElevatedButton(
onPressed: () {
Navigator.pop(context);
},
child: const Text('Kembali'),
),
),
);
}
}