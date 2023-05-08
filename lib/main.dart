import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/kevin_photo.jpeg'),
              ),
              const Text(
                'Kevin Salcedo Medina',
                style: TextStyle(
                  fontFamily: 'LobsterTwo',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Text(
                'Mobile developer',
                style: TextStyle(
                  fontFamily: 'PressStart2P',
                  fontSize: 12.0,
                  color: Colors.teal.shade50,
                  letterSpacing: 2.5,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade50,
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+57 3008617951',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                    ),
                  ),
                  onTap: () async {
                    const url = 'tel:+573008617951';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'No se pudo llamar a $url';
                    }
                  },
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'kevsalcedom@gmail.com',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                    ),
                  ),
                  onTap: () async {
                    const url = 'mailto:kevsalcedom@gmail.com';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'No se pudo crear el correo';
                    }
                  },
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: const Image(
                    width: 24.0,
                    height: 24.0,
                    color: Colors.teal,
                    image: AssetImage(
                      'images/ic_linkedin.png',
                    ),
                  ),
                  title: Text(
                    'LinkedIn',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                    ),
                  ),
                  onTap: () {
                    launch(
                        'https://www.linkedin.com/in/kevinsalcedom-android-developer/');
                  },
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: const Image(
                    width: 24.0,
                    height: 24.0,
                    color: Colors.teal,
                    image: AssetImage(
                      'images/ic_github.png',
                    ),
                  ),
                  title: Text(
                    'github.com/kevsalcedo',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                    ),
                  ),
                  onTap: () {
                    launch('https://github.com/kevsalcedo');
                  },
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: const Image(
                    width: 24.0,
                    height: 24.0,
                    color: Colors.teal,
                    image: AssetImage(
                      'images/ic_cv.png',
                    ),
                  ),
                  title: Text(
                    'curriculum vitae',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                    ),
                  ),
                  onTap: () {
                    launch(
                        'https://drive.google.com/file/d/1pNaiXdCKh_GnUbcGmiX0Vms9hVvwbKFG/view?usp=sharing');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
